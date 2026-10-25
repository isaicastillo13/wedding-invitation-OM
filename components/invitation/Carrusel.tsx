"use client";

import Image from "next/image";
import { useEffect, useState } from "react";

type FotoCarrusel = {
  src: string;
  objectPosition: string;
};

const fotos: FotoCarrusel[] = [
  { src: "/Images/Carrusel/Foto_1.jpg.jpeg", objectPosition: "50% 97%" },
  { src: "/Images/Carrusel/Foto_2.jpg.jpeg", objectPosition: "50% 97%" },
  { src: "/Images/Carrusel/Foto_3.jpg.jpeg", objectPosition: "50% 90%" },
  { src: "/Images/Carrusel/Foto_4.jpg.jpeg", objectPosition: "50% 90%" },
  { src: "/Images/Carrusel/Foto_5.jpg.jpeg", objectPosition: "50% 84%" },
  { src: "/Images/Carrusel/Foto_6.jpg.jpeg", objectPosition: "50% 97%" },
  { src: "/Images/Carrusel/Foto_7.jpg.jpeg", objectPosition: "50% 54%" },
  { src: "/Images/Carrusel/Foto_8.jpg.jpeg", objectPosition: "50% 80%" },
  { src: "/Images/Carrusel/Foto_9.jpeg", objectPosition: "50% 80%" },
];

export default function Carrusel() {
  const [fotoActual, setFotoActual] = useState(0);

  useEffect(() => {
    const intervalo = window.setInterval(() => {
      setFotoActual((actual) => (actual + 1) % fotos.length);
    }, 5000);

    return () => window.clearInterval(intervalo);
  }, []);

  return (
    <section
      aria-label="Galería de fotos"
      aria-roledescription="carrusel"
      className="bg-[#fcf4e8]"
    >
      <div className="w-full">
        <div className="relative w-full overflow-hidden h-70 bg-wedding-base">
          {fotos.map((foto, indice) => (
            <Image
              key={foto.src}
              src={foto.src}
              alt={`Foto ${indice + 1} de nuestra historia`}
              fill
              sizes="(max-width: 672px) 100vw, 672px"
              loading={indice === 0 ? "eager" : "lazy"}
              aria-hidden={indice !== fotoActual}
              className={`object-cover transition-opacity duration-1000 ease-in-out motion-reduce:transition-none ${
                indice === fotoActual ? "opacity-100" : "opacity-0"
              }`}
              style={{ objectPosition: foto.objectPosition }}
            />
          ))}
        </div>
      </div>
    </section>
  );
}