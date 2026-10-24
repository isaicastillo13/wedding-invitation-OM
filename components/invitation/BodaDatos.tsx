"use client";

import Image from "next/image";
import Icon_Church from "@/public/Icons/icon_MdiChurchOutline.svg";
import Icon_Cheers from "@/public/Icons/icon_PhCheers.svg";
import Icon_Calendar from "@/public/Icons/icon_MdiCalendar.svg";
import CorazonDecorativo from "@/public/Icons/Icon_MdiHeart.svg";
import { motion } from "framer-motion";

export default function Intro() {
  return (
    <section className="flex justify-center p-4 bg-black">
      <div className="w-full max-w-4xl mx-auto border border-wedding-lineas">
        <div className="flex flex-col items-center max-w-md mx-auto text-center">
          <motion.h1
            initial={{ opacity: 0, y: 18 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ delay: 0.25, duration: 0.7 }}
            className="max-w-sm my-8 italic leading-7 text-wedding-base"
          >
            Nuestra Boda
          </motion.h1>

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

          <div className="flex flex-col items-center w-full gap-4 mb-4 text-center">
            <Image
              src={Icon_Church}
              alt="Foto de los novios"
              width={48}
              height={48}
              className="object-cover object-[56%_center]"
            />
            <p className="max-w-xs text-wedding-base font-Cormorant_Garamond">
              <span className="font-bold">Ceremonia religiosa</span>
              <br /> Parroquia Nuestra Señora del Carmen, Managua, Nicaragua.
              <br /> 6:00 p. m.
            </p>
            
            <a
              href="https://share.google/z82yEPPt8JUWlQXPV"
              target="_blank"
              rel="noopener noreferrer"
              className="px-6 py-3 uppercase rounded-md text-wedding-base bg-wedding-lineas font-Raleway"
            >
              Ver ubicación
            </a>
          </div>

          <div className="flex flex-col items-center w-full gap-4 mb-4 text-center">
            <Image
              src={Icon_Cheers}
              alt="Foto de los novios"
              width={48}
              height={48}
              className="object-cover object-[56%_center]"
            />
            <p className="max-w-xs text-wedding-base font-Cormorant_Garamond">
              <span className="font-bold">Recepción</span>
              <br /> Hotel Crowne Plaza, Managua, Nicaragua (salón Ometepe).
              <br /> 7:30 p. m.
            </p>
            <a
              href="https://share.google/6cIhz43MmZ8iCOVgh"
              target="_blank"
              rel="noopener noreferrer"
              className="px-6 py-3 uppercase rounded-md bg-wedding-lineas font-Raleway text-wedding-base"
            >
              Ver ubicación
            </a>
          </div>

          <div className="flex flex-col items-center w-full gap-4 mb-4 text-center">
            <Image
              src={Icon_Calendar}
              alt="Foto de los novios"
              width={48}
              height={48}
              className="object-cover object-[56%_center]"
            />
            <p className="max-w-xs text-wedding-base font-Cormorant_Garamond">
              <span className="uppercase">SÁBADO</span>
              <br /> <span className="text-3xl font-bold">05</span>
              <br /> <span>de diciembre de 2026</span>
            </p>
          </div>
        </div>
      </div>
    </section>
  );
}
