/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'light-purple': '#C4ADDF',
        'dark-purple': '#47196D',
        'digital-orange': '#FF5000',
        'off-white': '#FFFEEA',
        'bg-dark': '#130421',
        'card-purple': '#2D0A4E',
        'inner-card': '#330D5A',
      },
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
      },
    },
  },
  plugins: [],
}