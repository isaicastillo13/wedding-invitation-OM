import Hero from "@/components/invitation/Hero";
import DatosBoda from "@/components/invitation/BodaDatos";
import Carrusel from "@/components/invitation/Carrusel";
import DetallesCelebracion from "@/components/invitation/DetallesCelebracion";
import Confirmacion from "@/components/invitation/Confirmacion";

export default function HomePage() {
  return (
    <main>
      <Hero />
      <DatosBoda />
      <Carrusel />
      <DetallesCelebracion />
      <Confirmacion />
    </main>
  );
}
