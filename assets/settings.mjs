import manifestPlugin from "esbuild-plugin-manifest"
import { sassPlugin } from "esbuild-sass-plugin"
import { NodePackageImporter } from "sass"

export default function (options) {
  return {
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
    ],
    ...options
  }
}
