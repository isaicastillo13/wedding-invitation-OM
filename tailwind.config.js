/** @type {import('tailwindcss').Config} */
module.exports = {
content: [
  "./app/**/*.{js,ts,jsx,tsx}",
  "./components/**/*.{js,ts,jsx,tsx}",
],
  theme: {
    extend: {
      colors: {
        wedding: {
          base: "#F9EDE0",
          primario: "#DED0C1",
          acentos: "#B9826D",
          textos: "#292522",
          lineas: "#C18E4C",
        },
      },
    },
  },
  plugins: [],
};