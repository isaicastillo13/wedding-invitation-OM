"use client";

import Image from "next/image";
import { useEffect, useState } from "react";

const fotos = [
  "/Images/Carrusel/Foto1.jpg",
  "/Images/Carrusel/Foto2.jpg",
  "/Images/Carrusel/Foto3.jpg",
  "/Images/Carrusel/Foto4.jpg",
  "/Images/Carrusel/Foto5.jpg",
  "/Images/Carrusel/Foto6.jpg",
  "/Images/Carrusel/Foto7.png",
  "/Images/Carrusel/Foto8.jpg",
  "/Images/Carrusel/Foto9.jpg",
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
        <div className="relative h-67.5 w-full overflow-hidden bg-wedding-base">
          {fotos.map((foto, indice) => (
            <Image
              key={foto}
              src={foto}
              alt={`Foto ${indice + 1} de nuestra historia`}
              fill
              sizes="(max-width: 672px) 100vw, 672px"
              loading={indice === 0 ? "eager" : "lazy"}
              aria-hidden={indice !== fotoActual}
              className={`object-cover object-bottom transition-opacity duration-1000 ease-in-out motion-reduce:transition-none ${
                indice === fotoActual ? "opacity-100" : "opacity-0"
              }`}
            />
          ))}
        </div>
      </div>
    </section>
  );
}