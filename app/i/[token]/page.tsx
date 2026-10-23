import { notFound } from "next/navigation";
import { prisma } from "@/lib/prisma";
import Hero from "@/components/invitation/Hero";
import BodaDatos from "@/components/invitation/BodaDatos";
import Carrusel from "@/components/invitation/Carrusel";
import DetallesCelebracion from "@/components/invitation/DetallesCelebracion";
import Confirmacion from "@/components/invitation/Confirmacion";

export default async function InvitationPage({
  params,
}: {
  params: Promise<{ token: string }>;
}) {
  const { token } = await params;
  const invitacion = await prisma.invitacion.findUnique({
    where: { codigo: token },
    include: { invitados: { orderBy: { orden: "asc" } } },
  });

  if (!invitacion) notFound();

  return (
    <main>
      <Hero />
      <BodaDatos />
      <Carrusel />
      <DetallesCelebracion />
      <Confirmacion
        codigo={invitacion.codigo}
        cantidadPuestos={invitacion.cantidadPuestos}
        fechaLimiteConfirmacion={
          invitacion.fechaLimiteConfirmacion?.toISOString().slice(0, 10) ?? null
        }
        invitados={invitacion.invitados.map(
          ({ id, nombreCompleto, asistira }) => ({
            id,
            nombreCompleto,
            asistira,
          }),
        )}
      />
    </main>
  );
}
