const { loadBinding } = require('@node-rs/helper')
const { spawn, call, kill } = loadBinding(__dirname, 'hypermachine-db', 'hypermachine-db')
const { NanoresourcePromise: Nanoresource } = require('nanoresource-promise/emitter')
const camelCase = require('camelcase')

require('why-is-node-running')

module.exports = class Machine extends Nanoresource {
  constructor (code, opts = {}) {
    super()
    this.code = code
    this._id = null
    // The module is only used to validate imports/exports.
    this._module = null
    this.ready = this.open.bind(this)
  }

  // Nanoresource Methods

  async _open () {
    this._module = await WebAssembly.compile(this.code)
    const exportNames = this._createCallMethods()
    this._id = spawn(this.code, exportNames, this._dispatch.bind(this))
  }

  async _close () {
    if (this._id === undefined) return
    return new Promise((resolve, reject) => {
      kill(this._id, err => {
        console.log('kill finished with err:', err)
        if (err) return reject(err)
        return resolve()
      })
    })
  }

  // Private Methods

  _createCallMethods () {
    const exportNames = WebAssembly.Module
      .exports(this._module)
      .map(({ name }) => name)
      .filter(name => name.startsWith('rpc_'))
    console.log('EXPORT NAMES:', exportNames)
    for (const name of exportNames) {
      const method = async (args) => {
        await this.open()
        if (!Buffer.isBuffer(args)) args = Buffer.from(args)
        return new Promise((resolve, reject) => {
          console.log('calling rpc with:', this._id, name, args)
          console.log('args length:', args.length)
          call(this._id, name, args, (err, result) => {
            if (err) return reject(err)
            return resolve(result)
          })
        })
      }
      this[camelCase(name.slice(4))] = method
    }
    return exportNames
  }

  // The Dispatcher Hostcall

  _dispatch (args, cb) {
    console.log('DISPATCH GOT ARGS:', args)
    return cb(null, Buffer.allocUnsafe(0))
  }
}