const p = require('path')
const fs = require('fs')
const test = require('tape')

const ECHO_WASM = fs.readFileSync(p.join(__dirname, 'machines', 'echo.wasm'))
const Machine = require('..')

test('can spawn and call an echo machine', async (t) => {
  const echoMachine = new Machine(ECHO_WASM)
  await echoMachine.ready()
  t.true(echoMachine._id !== null)
  t.true(typeof echoMachine.echo === 'function')
  console.log('CALLING ECHO')
  const res = await echoMachine.echo('hello world')
  t.same(res.toString('utf-8'), 'hello world')
  await echoMachine.close()
  console.log('KILLED MACHINE')
  t.end()
})
