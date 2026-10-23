import Image from "next/image";

const coloresReservados = [
  { nombre: "Dorado", color: "#C9A354" },
  { nombre: "Negro", color: "#171717" },
  { nombre: "Blanco", color: "#FFFFFF" },
  { nombre: "Gris claro", color: "#DDD9D1" },
  { nombre: "Azul marino", color: "#2F506F" },
];

export default function DetallesCelebracion() {
  return (
    <section
      aria-label="Código de vestimenta y detalles de la celebración"
      className="w-full max-w-2xl px-4 pt-5 pb-10 mx-auto text-center bg-wedding-primario text-wedding-textos"
    >
      <div>
        <h3 className="font-bold leading-7 font-Raleway">
          Código de vestimenta
        </h3>
        <div
          aria-hidden="true"
          className="w-32 h-px mx-auto mt-4 bg-wedding-lineas"
        />
        <p className="mt-5 text-3xl italic leading-tight font-Cormorant_Garamond">
          Traje formal
        </p>
        <p className="max-w-md mx-auto mt-5 text-lg leading-6 font-Raleway">
          Con cariño reservamos los siguientes colores para los novios y el
          cortejo:
        </p>

        <ul
          aria-label="Colores reservados para los novios y el cortejo"
          className="mx-auto mt-8 flex w-full max-w-[420px] items-center justify-center gap-3"
        >
          {coloresReservados.map(({ nombre, color }) => (
            <li key={nombre} aria-label={nombre}>
              <span
                aria-hidden="true"
                className="block rounded-full size-12 sm:size-16"
                style={{ backgroundColor: color }}
              />
            </li>
          ))}
        </ul>
      </div>

      <div
        aria-hidden="true"
        className="w-32 h-px mx-auto mt-16 mb-5 bg-wedding-lineas"
      />
      <h2 className="text-xl font-bold leading-7 font-Raleway">Regalos</h2>
      <p className="mt-4 text-lg leading-6 font-Raleway">
        Lluvia de sobres en efectivo.
      </p>

      <div
        aria-hidden="true"
        className="w-32 h-px mx-auto mt-5 mb-5 bg-wedding-lineas"
      />
      <p className="max-w-sm mx-auto text-3xl italic font-bold leading-tight font-Cormorant_Garamond">
        Celebración exclusiva
        <br />
        para adultos.
      </p>

      <Image
        src="/decorative-assets/rama_4.png"
        alt=""
        aria-hidden="true"
        width={44}
        height={56}
        className="object-contain mx-auto mt-6 h-14 w-11"
      />

      <p className="max-w-sm mx-auto mt-5 text-3xl italic leading-tight font-Cormorant_Garamond">
        Gracias por ser parte de
        <br />
        este gran momento en
        <br />
        nuestras vidas
      </p>

      <div className="flex items-center justify-center max-w-sm gap-5 mx-auto mt-7">
        <span aria-hidden="true" className="flex-1 h-px bg-wedding-lineas" />
        <svg
          aria-hidden="true"
          viewBox="0 0 24 24"
          className="size-5 shrink-0 fill-wedding-lineas"
        >
          <path d="M12 21.35 10.55 20C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.51L12 21.35Z" />
        </svg>
        <span aria-hidden="true" className="flex-1 h-px bg-wedding-lineas" />
      </div>
    </section>
  );
}
