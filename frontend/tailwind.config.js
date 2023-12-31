/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    'app', 'components'
  ].map((dir) => require('path').resolve(`${dir}/**/*.{js,jsx,ts,tsx}`)),
  theme: {
    extend: {},
  },
  plugins: [],
};
