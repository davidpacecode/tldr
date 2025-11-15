import "$styles/index.css"
import "$styles/syntax-highlighting.css"

// Example Web Awesome components. Mix 'n' match however you like!
import "./webawesome/dist/components/button/button.js"
import "./webawesome/dist/components/icon/icon.js"
import "./webawesome/dist/components/spinner/spinner.js"
import "./webawesome/dist/components/page/page.js";
import "./webawesome/dist/components/tree/tree.js";
import "./webawesome/dist/components/tree-item/tree-item.js";

// Import all JavaScript & CSS files from src/_components
import components from "$components/**/*.{js,jsx,js.rb,css}"

console.info("Bridgetown is loaded!")
