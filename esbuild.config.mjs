import * as esbuild from "esbuild"
import { sassPlugin } from "esbuild-sass-plugin"
import { NodePackageImporter } from "sass"
import manifestPlugin from "esbuild-plugin-manifest"

await esbuild.build({
  entryPoints: ["assets/main.scss"],
  bundle: true,
  outdir: "public",
  entryNames: "[dir]/[name]-[hash]",
  plugins: [
    sassPlugin({
      importers: [new NodePackageImporter()]
    }),
    manifestPlugin({
      shortNames: true
    })
  ]
}).catch((e) => console.error(e.message))
