import * as esbuild from "esbuild"
import createBuildSettings from "./settings.mjs"

const settings = createBuildSettings({})

await esbuild.build(
  settings
).catch(
  (e) => console.error(e.message)
)
