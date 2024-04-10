import * as esbuild from "esbuild"
import createBuildSettings from "./settings.mjs"

const settings = createBuildSettings({})
const ctx = await esbuild.context(settings)

const { host, port } = await ctx.serve({
  port: 9000,
  servedir: "./public"
}).catch(
  (e) => console.error(e.message)
)

console.log(`Serving assets at ${host}:${port}.`)
