const ZONA_HORARIA_EVENTO = "America/Managua";

export function fechaActualEvento(fecha = new Date()) {
  const partes = new Intl.DateTimeFormat("en-US", {
    timeZone: ZONA_HORARIA_EVENTO,
    year: "numeric",
    month: "2-digit",
    day: "2-digit",
  }).formatToParts(fecha);
  const valores = Object.fromEntries(partes.map(({ type, value }) => [type, value]));

  return `${valores.year}-${valores.month}-${valores.day}`;
}

export function fechaLimiteVencida(
  fechaLimite: string | null,
  fechaActual = new Date(),
) {
  return fechaLimite !== null && fechaActualEvento(fechaActual) > fechaLimite;
}

export function fechaLegible(fecha: string) {
  const [year, month, day] = fecha.split("-").map(Number);

  return new Intl.DateTimeFormat("es-NI", {
    day: "numeric",
    month: "long",
    year: "numeric",
    timeZone: "UTC",
  }).format(new Date(Date.UTC(year, month - 1, day)));
}
