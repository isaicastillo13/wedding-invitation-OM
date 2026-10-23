"use client";

import Image from "next/image";
import { motion } from "framer-motion";
import RamaDecorativa_4 from "@/public/decorative-assets/rama_4.png";
import CorazonDecorativo from "@/public/Icons/Icon_MdiHeart.svg"

export default function Hero() {
  return (
    <section className="p-4 bg-[#fcf4e8]">
      <motion.div
        initial={{ opacity: 0, y: 20 }}
        animate={{ opacity: 1, y: 0 }}
        transition={{ duration: 1 }}
        className="max-w-md mx-auto"
      >
        <svg aria-hidden="true" width="0" height="0" className="absolute">
          <defs>
            <clipPath id="hero-photo-curve" clipPathUnits="objectBoundingBox">
              <path d="M0,0 H1 V0.9 C0.78,0.98 0.22,0.98 0,0.9 Z" />
            </clipPath>
          </defs>
        </svg>

        <div className="relative overflow-hidden bg-[#fcf4e8]">
          <div className="relative">
            <div
              className="relative aspect-[3/4.4] overflow-hidden"
              style={{ clipPath: "url(#hero-photo-curve)" }}
            >
              <Image
                src="/Images/Foto_Hero.jpeg"
                alt="Foto de los novios"
                fill
                priority
                className="object-cover object-[56%_center]"
              />
            </div>
          </div>

          <div className="pt-10 pb-10 text-center px-7 text-wedding-textos border-x border-b border-[#d7b27c]">
            <p className="px-4 text-lg italic leading-relaxed font-Cormorant_Garamond">
              18 años de una historia escrita con amor, pruebas y perseverancia.
            </p>

            <div className="flex items-center justify-center gap-3 my-7 text-wedding-lineas">
              <span className="w-24 h-px bg-wedding-lineas" />
              <Image
                src={CorazonDecorativo}
                alt="Foto de los novios"
                width={24}
                height={24}
                className="object-cover object-[56%_center]"
              />
              <span className="w-24 h-px bg-wedding-lineas" />
            </div>

            <p className="px-4 text-lg leading-9 text-wedding-textos font-Cormorant_Garamond">
              Después de caminar juntos, superar dificultades y construir nuestro
              hogar, hoy renovamos nuestro &ldquo;sí&rdquo; y damos el paso que nuestro
              corazón esperaba: unirnos ante Dios y recibir la bendición de
              nuestro matrimonio en la Iglesia.
            </p>

            <div className="mt-10 flex items-center justify-center gap-4 text-[#c79b58]">
              <span className="h-px w-24 bg-[#d7b27c]" />
              <Image
                src={RamaDecorativa_4}
                alt="rama decorativa"
                width={32}
                height={32}
                className="object-cover"
              />
              <span className="h-px w-24 bg-[#d7b27c]" />
            </div>
          </div>
        </div>
      </motion.div>
    </section>
  );
}
