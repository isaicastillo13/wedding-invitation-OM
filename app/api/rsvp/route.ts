import { prisma } from "@/lib/prisma";
import { NextResponse } from "next/server";
import { syncGoogleSheet } from "@/lib/syncGoogleSheet";
import { fechaLimiteVencida } from "@/lib/fechaConfirmacion";
import { z } from "zod";

const confirmacionSchema = z.object({
  codigo: z.string().trim().min(1),
  invitados: z
    .array(
      z.object({
        id: z.string().uuid(),
        asistira: z.boolean(),
      }),
    )
    .min(1),
});

export async function POST(req: Request) {
  try {
    let body: unknown;
    try {
      body = await req.json();
    } catch {
      return NextResponse.json({ error: "Solicitud JSON inválida" }, { status: 400 });
    }

    const validacion = confirmacionSchema.safeParse(body);
    if (!validacion.success) {
      return NextResponse.json(
        { error: "El código y la lista de invitados son requeridos" },
        { status: 400 },
      );
    }

    const { codigo, invitados } = validacion.data;
    const idsEnviados = new Set(invitados.map(({ id }) => id));

    if (idsEnviados.size !== invitados.length) {
      return NextResponse.json(
        { error: "La lista contiene invitados duplicados" },
        { status: 400 },
      );
    }

    const invitacion = await prisma.invitacion.findUnique({
      where: { codigo },
      include: {
        invitados: { orderBy: { orden: "asc" } },
      },
    });

    if (!invitacion) {
      return NextResponse.json(
        { error: "Invitación no encontrada" },
        { status: 404 },
      );
    }

    const idsValidos = new Set(invitacion.invitados.map(({ id }) => id));
    if (
      invitados.length !== invitacion.invitados.length ||
      invitados.some(({ id }) => !idsValidos.has(id))
    ) {
      return NextResponse.json(
        { error: "La lista de invitados no coincide con esta invitación" },
        { status: 400 },
      );
    }

    const fechaLimite = invitacion.fechaLimiteConfirmacion
      ?.toISOString()
      .slice(0, 10);
    if (fechaLimiteVencida(fechaLimite ?? null)) {
      return NextResponse.json(
        { error: "El plazo para confirmar esta invitación ha finalizado" },
        { status: 409 },
      );
    }

    const cantidadConfirmada = invitados.filter((g) => g.asistira).length;
    if (cantidadConfirmada > invitacion.cantidadPuestos) {
      return NextResponse.json(
        { error: "La cantidad de asistentes supera los puestos reservados" },
        { status: 400 },
      );
    }

    const estado = cantidadConfirmada > 0 ? "confirmada" : "no_asiste";

    await prisma.$transaction([
      ...invitados.map((g) =>
        prisma.invitado.update({
          where: { id: g.id },
          data: { asistira: g.asistira },
        }),
      ),
      prisma.invitacion.update({
        where: { id: invitacion.id },
        data: {
          cantidadConfirmada,
          estado,
          fechaConfirmacion: new Date(),
        },
      }),
    ]);

    try {
      await syncGoogleSheet({
        Codigo: invitacion.codigo,
        "Nombre de la Familia": invitacion.nombreFamilia ?? "",
        "Puestos Asignados": invitacion.cantidadPuestos,
        Estado: estado,
        "Puestos Confirmados": cantidadConfirmada,
        "Invitados Asistentes": invitados
          .filter((g) => g.asistira)
          .map((g) => {
            const invitado = invitacion.invitados.find((i) => i.id === g.id);
            return invitado?.nombreCompleto ?? "";
          })
          .join(", "),
        "Fecha Respuesta": new Date().toISOString(),
        Link: `${process.env.NEXT_PUBLIC_APP_URL || "http://localhost:3000"}/i/${invitacion.codigo}`,
      });
    } catch (error) {
      console.error("RSVP_SHEET_SYNC_ERROR:", error);
    }

    return NextResponse.json({
      success: true,
      cantidadConfirmada,
      estado,
    });
  } catch (error) {
    console.error("RSVP_ERROR:", error);

    return NextResponse.json(
      { error: "Error guardando la confirmación" },
      { status: 500 },
    );
  }
}
