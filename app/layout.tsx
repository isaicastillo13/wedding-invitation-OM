import type { Metadata } from "next";
import { Cormorant_Garamond, Raleway } from "next/font/google";
import "./globals.css";


const cormorant = Cormorant_Garamond ({
  subsets: ["latin"],
  weight: "400",
  variable: "--font-script",
});

const raleway = Raleway({
  subsets: ["latin"],
  weight: ["400","700"],
  variable: "--font-serif",
});


export const metadata: Metadata = {
  title: "Boda O|M",
  description: "18 años de una historia escrita con amor, pruebas y perseverancia.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html
      lang="en"
      className={`${cormorant.variable} ${raleway.variable} h-full antialiased`}
    >
      <body className="flex flex-col min-h-full">{children}</body>
    </html>
  );
}
