### Investigating the system

Running `wash up` for the first time, will not only start the wasmCloud host, but also a local NATS cluster.

Lets keep the host running and skip to **Terminal 2** to check investigate whats running:

`ps aux | grep wasm`{{exec}}

Reveals the process of the running wasmCloud host. But wait, there is more!

`ps aux | grep wash`{{exec}}

By running `wash up` a couple of more processes have been spawned:

- nats-server exposed on port `4222`
- wadm (more on that later)

Lets keep this in mind and proceed exploring!
