"use client";

import Image from "next/image";
import { FormEvent, useState } from "react";
import { fechaLegible, fechaLimiteVencida } from "@/lib/fechaConfirmacion";

type InvitadoConfirmacion = {
  id: string;
  nombreCompleto: string;
  asistira: boolean | null;
};

type ConfirmacionProps = {
  codigo?: string;
  cantidadPuestos?: number;
  fechaLimiteConfirmacion?: string | null;
  invitados?: InvitadoConfirmacion[];
};

export default function Confirmacion({
  codigo = "",
  cantidadPuestos = 0,
  fechaLimiteConfirmacion = null,
  invitados = [],
}: ConfirmacionProps) {
  const invitadosLista = Array.isArray(invitados) ? invitados : [];
  const [seleccionados, setSeleccionados] = useState(
    () =>
      new Set(
        invitadosLista
          .filter((invitado) => invitado.asistira)
          .map(({ id }) => id),
      ),
  );
  const [enviando, setEnviando] = useState(false);
  const [mensaje, setMensaje] = useState<string | null>(null);
  const [error, setError] = useState<string | null>(null);

  const limiteVencido = fechaLimiteVencida(fechaLimiteConfirmacion);
  const excedePuestos = seleccionados.size > cantidadPuestos;
  const fechaLimiteTexto = fechaLimiteConfirmacion
    ? fechaLegible(fechaLimiteConfirmacion)
    : null;

  const cambiarSeleccion = (id: string, marcado: boolean) => {
    setSeleccionados((actuales) => {
      const siguiente = new Set(actuales);

      if (marcado) {
        if (siguiente.size >= cantidadPuestos) return actuales;
        siguiente.add(id);
      } else {
        siguiente.delete(id);
      }

      return siguiente;
    });
    setMensaje(null);
    setError(null);
  };

  const confirmarAsistencia = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    if (!codigo) {
      setError("No se encontró el código de invitación para confirmar asistencia.");
      return;
    }

    setEnviando(true);
    setMensaje(null);
    setError(null);

    try {
      const respuesta = await fetch("/api/rsvp", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          codigo,
          invitados: invitadosLista.map(({ id }) => ({
            id,
            asistira: seleccionados.has(id),
          })),
        }),
      });

      const resultado = (await respuesta.json()) as {
        error?: string;
        cantidadConfirmada?: number;
      };

      if (!respuesta.ok) {
        setError(resultado.error ?? "No se pudo guardar la confirmación.");
        return;
      }

      setMensaje(
        resultado.cantidadConfirmada
          ? "¡Gracias por confirmar su asistencia!"
          : "La respuesta se guardó. Lamentamos que no puedan acompañarnos.",
      );
    } catch {
      setError("No fue posible conectar con el servidor. Inténtelo nuevamente.");
    } finally {
      setEnviando(false);
    }
  };

  return (
    <section
      aria-labelledby="confirmacion-titulo"
      className="mx-auto w-full max-w-xl bg-[#080807] p-2 text-center text-wedding-base"
    >
      <div className="border border-wedding-lineas">
        <div className="relative h-[300px] overflow-hidden">
          <svg aria-hidden="true" className="absolute size-0">
            <defs>
              <clipPath id="confirmacion-foto-curva" clipPathUnits="objectBoundingBox">
                <path d="M0,0 H1 V0.88 C0.78,0.98 0.22,0.98 0,0.88 Z" />
              </clipPath>
            </defs>
          </svg>
          <Image
            src="/Images/Carrusel/Foto_7.jpg.jpeg"
            alt="Manos de los novios con su anillo de compromiso"
            fill
            sizes="(max-width: 576px) 100vw, 576px"
            className="object-cover object-center"
            style={{ clipPath: "url(#confirmacion-foto-curva)" }}
          />
          <svg
            aria-hidden="true"
            viewBox="0 0 100 100"
            preserveAspectRatio="none"
            className="absolute inset-0 pointer-events-none size-full"
          >
            <path
              d="M0 0H100V88C78 98 22 98 0 88Z"
              fill="none"
              stroke="var(--color-wedding-lineas)"
              strokeWidth="0.35"
              vectorEffect="non-scaling-stroke"
            />
          </svg>
        </div>

        <div className="px-5 pt-5 pb-8 sm:px-10">
          <h2
            id="confirmacion-titulo"
            className="text-4xl font-semibold leading-tight font-Cormorant_Garamond"
          >
            Confirmación de asistencia
          </h2>

          <p className="max-w-md mx-auto mt-3 text-lg leading-6 font-Raleway">
            Les agradeceremos confirmar su asistencia
            {fechaLimiteTexto ? (
              <>
                <br />
                antes del {fechaLimiteTexto}.
              </>
            ) : (
              " a la brevedad."
            )}
          </p>

          <p className="mt-5 text-lg font-Raleway">Puestos reservados:</p>
          <p className="mt-2 text-4xl italic font-bold font-Cormorant_Garamond text-wedding-lineas">
            {cantidadPuestos}
          </p>

          <p className="max-w-sm mx-auto mt-5 text-lg leading-6 font-Raleway">
            Para confirmar su asistencia, marque la casilla correspondiente a
            cada persona que asistirá y oprima &ldquo;Confirmar asistencia&rdquo;.
          </p>

          {limiteVencido && (
            <p
              role="status"
              className="max-w-sm mx-auto mt-5 text-base font-Raleway text-wedding-lineas"
            >
              El plazo para confirmar esta invitación ha finalizado.
            </p>
          )}

          {invitadosLista.length > 0 ? (
            <form onSubmit={confirmarAsistencia} className="mt-5">
              <fieldset
                disabled={enviando || limiteVencido}
                className="flex flex-col items-center max-w-sm gap-5 mx-auto"
              >
                <legend className="sr-only">Selecciona quiénes asistirán</legend>
                {invitadosLista.map((invitado, indice) => {
                  const estaSeleccionado = seleccionados.has(invitado.id);
                  const sinPuestos =
                    !estaSeleccionado && seleccionados.size >= cantidadPuestos;

                  return (
                    <label
                      key={invitado.id}
                      className={`flex min-h-8 items-center gap-3 font-Cormorant_Garamond text-xl italic text-wedding-lineas ${
                        sinPuestos ? "cursor-not-allowed opacity-50" : "cursor-pointer"
                      }`}
                    >
                      <input
                        type="checkbox"
                        checked={estaSeleccionado}
                        disabled={sinPuestos}
                        onChange={(event) =>
                          cambiarSeleccion(invitado.id, event.target.checked)
                        }
                        className="sr-only peer"
                      />
                      <span
                        aria-hidden="true"
                        className="flex items-center justify-center text-transparent border rounded size-5 shrink-0 border-wedding-lineas peer-checked:bg-wedding-lineas peer-checked:text-wedding-base peer-focus-visible:outline-2 peer-focus-visible:outline-offset-2 peer-focus-visible:outline-wedding-lineas"
                      >
                        <svg viewBox="0 0 20 20" className="size-4 fill-none">
                          <path
                            d="m4 10 4 4 8-8"
                            stroke="currentColor"
                            strokeLinecap="round"
                            strokeLinejoin="round"
                            strokeWidth="2"
                          />
                        </svg>
                      </span>
                      <span>
                        {invitado.nombreCompleto || `Invitado ${indice + 1}`}
                      </span>
                    </label>
                  );
                })}
              </fieldset>

              {excedePuestos && (
                <p role="alert" className="mt-4 text-sm text-red-300 font-Raleway">
                  La cantidad de asistentes supera los puestos reservados.
                </p>
              )}

              <button
                type="submit"
                disabled={enviando || limiteVencido || excedePuestos}
                className="w-full max-w-sm px-5 mt-8 text-sm tracking-widest uppercase transition-opacity rounded-md min-h-12 bg-wedding-lineas font-Raleway text-wedding-base hover:opacity-90 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-wedding-base disabled:cursor-not-allowed disabled:opacity-50"
              >
                {enviando ? "Guardando..." : "Confirmar asistencia"}
              </button>
            </form>
          ) : (
            <p role="alert" className="mt-6 text-base font-Raleway">
              Esta invitación aún no tiene invitados registrados.
            </p>
          )}

          {mensaje && (
            <p role="status" className="mt-5 text-base font-Raleway">
              {mensaje}
            </p>
          )}
          {error && (
            <p role="alert" className="mt-5 text-base text-red-300 font-Raleway">
              {error}
            </p>
          )}
        </div>
      </div>
    </section>
  );
}
