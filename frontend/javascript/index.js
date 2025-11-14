import "$styles/index.css"
import "$styles/syntax-highlighting.css"

// Example Web Awesome components. Mix 'n' match however you like!
import "@awesome.me/webawesome/dist/components/button/button.js"
import "@awesome.me/webawesome/dist/components/icon/icon.js"
import "@awesome.me/webawesome/dist/components/spinner/spinner.js"
import "./webawesome/dist/components/page/page.js";

// Import all JavaScript & CSS files from src/_components
import components from "$components/**/*.{js,jsx,js.rb,css}"

console.info("Bridgetown is loaded!")
