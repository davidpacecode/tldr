import build from "./config/esbuild.defaults.js"
import { copy } from 'esbuild-plugin-copy'

// You can customize this as you wish, perhaps to add new esbuild plugins.
//
// You can also support custom base_path deployments via changing `publicPath`.
//
// ```
// const esbuildOptions = {
//   publicPath: "/my_subfolder/_bridgetown/static",
//   ...
// }
// ```

/**
 * @typedef { import("esbuild").BuildOptions } BuildOptions
 * @type {BuildOptions}
 */
const esbuildOptions = {
  plugins: [
    copy({
      resolveFrom: 'cwd',
      assets: {
        from: ['./frontend/styles/webawesome/dist/**/*'],
        to: ['./output/webawesome/dist'],
      },
      verbose: false
    }),
  ],
  globOptions: {
    excludeFilter: /\.(dsd|lit)\.css$/
  }
}

build(esbuildOptions)
