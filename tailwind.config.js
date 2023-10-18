/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
      "./resources/**/*.blade.php",
      "./resources/**/*.js",
      "./resources/**/*.vue",
  ],
  theme: {
    extend: {
        fontFamily: {
            'montserrat': ['Montserrat', 'sans-serif']
        }
    },
    container: {
        screens: {
            'xl':'1140px',
        }
    }
  },
  plugins: [],
}

