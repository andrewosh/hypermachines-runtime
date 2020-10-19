const { loadBinding } = require('@node-rs/helper')
const { NanoresourcePromise: Nanoresource } = require('nanoresource-promise/emitter')
const mutexify = require('mutexify/promise')
const camelCase = require('camelcase')

const {
  spawn,
  call,
  kill,
  reply_success,
  reply_failure
} = loadBinding(__dirname, 'hypermachines-runtime', 'hypermachines-runtime')

module.exports = class Machine extends Nanoresource {
  constructor (code, opts = {}) {
    super()
    this.code = code
    this._id = null
    // The module is only used to validate imports/exports.
    this.module = null
    this._lock = mutexify()
    this.ready = this.open.bind(this)
    this.onHostcall = opts.onHostcall
  }

  // Nanoresource Methods

  async _open () {
    this.module = await WebAssembly.compile(this.code)
    const exportNames = this._createCallMethods()
    this._id = spawn(this.code, exportNames, this._dispatch.bind(this))
  }

  async _close () {
    if (this._id === undefined) return
    return new Promise((resolve, reject) => {
      kill(this._id, err => {
        if (err) return reject(err)
        return resolve()
      })
    })
  }

  // Private Methods

  _createCallMethods () {
    const exportNames = WebAssembly.Module
      .exports(this.module)
      .map(({ name }) => name)
      .filter(name => name.startsWith('rpc_'))
    for (const name of exportNames) {
      const method = async (args) => {
        await this.open()
        const release = await this._lock()
        if (!args) args = Buffer.alloc(0)
        if (!Buffer.isBuffer(args)) args = Buffer.from(args)
        try {
          const res = new Promise((resolve, reject) => {
            call(this._id, name, args, (err, result) => {
              if (err) return reject(err)
              return resolve(result)
            })
          })
          return res
        } finally {
          release()
        }
      }
      this[camelCase(name.slice(4))] = method
    }
    return exportNames
  }

  // The Dispatcher Hostcall

  async _dispatch (_, { mid: machineId, args }) {
    if (!this.onHostcall) return reply_failure(machineId, "No hostcalls defined")
    try {
      let rsp = await this.onHostcall(machineId, args)
      if (!Buffer.isBuffer(rsp)) rsp = Buffer.from(rsp)
      reply_success(machineId, rsp)
    } catch (err) {
      reply_failure(machineId, err.toString())
    }
  }
}

function noop () {}
