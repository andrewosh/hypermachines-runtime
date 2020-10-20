const fs = require('fs')
const p = require('path')
const os = require('os')

const PLATFORM = os.platform()
const FILENAME = `hypermachines-runtime.${PLATFORM}.node`
const LOCAL_BINDINGS = p.join(__dirname, FILENAME)
const DEP_BINDINGS = p.join('@hypermachines', `runtime-${PLATFORM}`, FILENAME)

module.exports = function loadBindings () {
  try {
    fs.statSync(LOCAL_BINDINGS)
    return require(LOCAL_BINDINGS)
  } catch (_) {
    return require(DEP_BINDINGS)
  }
}
