/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./source/**/*.{html,erb,md}"
  ],
  theme: {
    extend: {
			colors: {
        link: "#5960B2",
        linkhover: "#363a6d",
        accent: "#d97706",
        backgroundlight: "#e1e1e1",
        lightpurple: "#C5C5D2",
        body: "#171223",
      },
			fontFamily: {
        serif: ["EB Garamond", "serif"],
        sans: ["Lato", "sans-serif"],
      },
		},
  },
  plugins: [],
}
