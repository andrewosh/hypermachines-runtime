const p = require('path')
const fs = require('fs')
const test = require('tape')

const TESTER_WASM = fs.readFileSync(p.join(__dirname, '..', 'machines', 'tester.wasm'), {
  encoding: 'utf-8'
})
const { spawn } = require('..')

test('can spawn a wasm machine', async (t) => {
  try {
    const machineId = await spawn(TESTER_WASM, JSON.stringify({}))
    t.same(machineId, 1)
    t.pass('spawned machine')
  } catch (err) {
    t.fail(err)
  }
  t.end()
})
