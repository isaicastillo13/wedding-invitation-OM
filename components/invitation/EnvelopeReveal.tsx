"use client";

import Image from "next/image";
import { ReactNode, useCallback, useState } from "react";

type EnvelopeRevealProps = {
  children: ReactNode;
};

export default function EnvelopeReveal({ children }: EnvelopeRevealProps) {
  const [abierto, setAbierto] = useState(false);

  const abrirSobre = useCallback(() => {
    setAbierto((actual) => (actual ? actual : true));
  }, []);

  return (
    <main className="relative bg-[#fcf4e8]">
      <div
        className={`transition-opacity duration-500 ${
          abierto ? "opacity-100 delay-700" : "pointer-events-none opacity-0"
        }`}
      >
        {children}
      </div>

      <section
        aria-label="Sobre de invitación"
        role="button"
        tabIndex={abierto ? -1 : 0}
        onClick={abrirSobre}
        onKeyDown={(event) => {
          if (event.key === "Enter" || event.key === " ") {
            event.preventDefault();
            abrirSobre();
          }
        }}
        className={`fixed inset-0 z-40 flex items-center justify-center bg-black px-0 transition-all duration-900 ease-out ${
          abierto
            ? "pointer-events-none bg-black/0 opacity-0"
            : "cursor-pointer opacity-100"
        }`}
      >
        <div className="relative w-screen overflow-hidden h-dvh">
          <div
            className={`absolute inset-y-0 left-0 z-30 w-1/2 transition-transform duration-[900ms] ease-in-out ${
              abierto ? "-translate-x-[135%]" : "translate-x-0"
            }`}
          >
            <div className="relative w-full h-full overflow-visible">
              <Image
                src="/envelope/flap-left.png"
                alt=""
                aria-hidden="true"
                width={1480}
                height={1038}
                priority
                className="absolute left-1/2 top-1/2 h-[285%] w-[470%] max-w-none -translate-x-[44%] -translate-y-1/2 rotate-[270deg] object-contain"
              />
              <Image
                src="/envelope/seal.png"
                alt=""
                aria-hidden="true"
                width={1280}
                height={1280}
                priority
                className={`absolute left-[154%] top-1/2 z-40 h-[16.8rem] w-[16.8rem] -translate-x-1/2 -translate-y-1/2 object-contain transition-all duration-[900ms] ease-in-out sm:h-[7.6rem] sm:w-[7.6rem] ${
                  abierto ? "opacity-90" : "opacity-100"
                }`}
              />
            </div>
          </div>

          <div
            className={`absolute inset-y-0 right-0 z-20 w-1/2 transition-transform duration-[900ms] ease-in-out ${
              abierto ? "translate-x-[135%]" : "translate-x-0"
            }`}
          >
            <div className="relative w-full h-full overflow-visible">
              <Image
                src="/envelope/flap-right.png"
                alt=""
                aria-hidden="true"
                width={1480}
                height={1038}
                priority
                className="absolute left-1/2 top-1/2 h-[285%] w-[470%] max-w-none -translate-x-[63%] -translate-y-1/2 -rotate-90 object-contain"
              />
            </div>
          </div>

          <span
            className={`absolute inset-x-5 bottom-6 rounded-md bg-black/60 px-4 py-3 text-center font-Raleway text-xs uppercase tracking-[0.2em] text-wedding-base transition-all duration-700 ${
              abierto ? "translate-y-4 opacity-0" : "translate-y-0 opacity-100"
            }`}
          >
            Toca la pantalla para abrir la invitación
          </span>
        </div>
      </section>
    </main>
  );
}
