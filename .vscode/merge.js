import { join, dirname } from 'path'
import { fileURLToPath } from 'url'
import fs from 'fs/promises'
import _ from 'lodash'
import stringify from 'json-stringify-pretty-compact'
// import jsonc from 'jsonc'
import stripJsonComments from 'strip-json-comments'
import stripJsonTrailingCommasPkg from 'strip-json-trailing-commas'

let stripJsonTrailingCommas = stripJsonTrailingCommasPkg.default

let getPath = (currImportMeta) => {
  let __filename = fileURLToPath(currImportMeta.url)
  let __dirname = dirname(__filename)
  return { __filename, __dirname }
}
let { __dirname } = getPath(import.meta)

;(async () => {
  let list = await fs.readdir(__dirname)
  let sources = list.filter(v => /^settings_.*\.json$/.test(v))
  console.log('sources order:', sources)

  let fullData = {}
  for (let source of sources) {
    let contents = await fs.readFile(source, 'utf8')

    // fix with jsonc.parse cannot handle trailing commas
    // use stripJsonComments + stripJsonTrailingCommas instead
    // let data = jsonc.parse(contents)
    contents = stripJsonComments(contents)
    contents = stripJsonTrailingCommas(contents)

    let data = JSON.parse(contents)
    _.merge(fullData, data)
  }

  let dist = join(__dirname, 'settings.json')
  let fullContents = stringify(fullData, { maxLength: 120 }) + '\n'
  await fs.writeFile(dist, fullContents)
})()
