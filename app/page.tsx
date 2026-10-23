import Hero from "@/components/invitation/Hero";
import DatosBoda from "@/components/invitation/BodaDatos";
import Carrusel from "@/components/invitation/Carrusel";
import DetallesCelebracion from "@/components/invitation/DetallesCelebracion";
import Confirmacion from "@/components/invitation/Confirmacion";
import EnvelopeReveal from "@/components/invitation/EnvelopeReveal";

export default function HomePage() {
  return (
    <EnvelopeReveal>
      <Hero />
      <DatosBoda />
      <Carrusel />
      <DetallesCelebracion />
      <Confirmacion />
    </EnvelopeReveal>
  );
}
