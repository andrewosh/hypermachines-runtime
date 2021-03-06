const p = require('path')
const fs = require('fs')
const test = require('tape')
const cbor = require('cbor')

const ECHO_WASM = fs.readFileSync(p.join(__dirname, 'machines', 'echo.wasm'))
const HOSTCALL_ECHO_WASM = fs.readFileSync(p.join(__dirname, 'machines', 'hostcall_echo.wasm'))

const Machine = require('..')

test('can spawn and call an echo machine', async (t) => {
  const echoMachine = new Machine(ECHO_WASM)
  await echoMachine.ready()
  t.true(echoMachine._id !== null)
  t.true(typeof echoMachine.echo === 'function')
  const res = await echoMachine.echo('hello world')
  t.same(res.toString('utf-8'), 'hello world')
  await echoMachine.close()
  t.end()
})

test('can spawn/call many echo machines', async t => {
  const NUM_MACHINES = 20
  const machines = []

  for (let i = 0; i < NUM_MACHINES; i++) {
    const machine = new Machine(ECHO_WASM)
    await machine.ready()
    const res = await machine.echo('hello world ' + i)
    t.same(res.toString('utf-8'), 'hello world ' + i)
    machines.push(machine)
  }

  await Promise.all(machines.map(m => m.close()))
  t.end()
})

test('guest can make hostcalls', async t => {
  const machine = new Machine(HOSTCALL_ECHO_WASM, {
    async onHostcall (_, req) {
      const decoded = await cbor.decodeFirst(req)
      const val = decoded['Append']
      t.same(val, 'hello world')
      return cbor.encodeOne(val + ' hello')
    }
  })
  await machine.ready()
  const res = await machine.echo('hello world')
  t.same(await cbor.decodeFirst(res), 'hello world hello')
  await machine.close()
  t.end()
})

test('can spawn many hostcall machines', async t => {
  const NUM_MACHINES = 20
  const machines = []

  for (let i = 0; i < NUM_MACHINES; i++) {
    const machine = new Machine(HOSTCALL_ECHO_WASM, {
      async onHostcall (_, req) {
        const decoded = await cbor.decodeFirst(req)
        const val = decoded['Append']
        t.same(val, 'hello world ' + i)
        return cbor.encodeOne(val + ' hello')
      }
    })
    await machine.ready()
    machines.push(machine)
  }

  for (let i = 0; i < NUM_MACHINES; i++) {
    const machine = machines[i]
    const decoded = await cbor.decodeFirst(await machine.echo('hello world ' + i))
    t.same(decoded, `hello world ${i} hello`)
  }
  await Promise.all(machines.map(m => m.close()))
  t.end()
})
