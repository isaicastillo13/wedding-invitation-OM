import Hero from "@/components/invitation/Hero";
import DatosBoda from "@/components/invitation/BodaDatos";
import Carrusel from "@/components/invitation/Carrusel";
import DetallesCelebracion from "@/components/invitation/DetallesCelebracion";
import Confirmacion from "@/components/invitation/Confirmacion";
import EnvelopeReveal from "@/components/invitation/EnvelopeReveal";
import ScrollReveal from "@/components/invitation/ScrollReveal";

export default function HomePage() {
  return (
    <EnvelopeReveal>
      <Hero />
      <ScrollReveal>
        <DatosBoda />
      </ScrollReveal>
      <ScrollReveal>
        <Carrusel />
      </ScrollReveal>
      <ScrollReveal>
        <DetallesCelebracion />
      </ScrollReveal>
      <ScrollReveal>
        <Confirmacion />
      </ScrollReveal>
    </EnvelopeReveal>
  );
}
