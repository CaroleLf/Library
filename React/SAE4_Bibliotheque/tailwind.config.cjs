/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'transparent-black': 'rgba(0, 0, 0, 0.8)',
      }
    },
  },
  plugins: [],
}