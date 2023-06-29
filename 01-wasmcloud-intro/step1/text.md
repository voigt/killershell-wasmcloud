# Startup Wasmcloud

### Getting ready

For your convenience, we already installed WasmCloud in this environment. Lets verify that wash is installed and working:

`wash --version`{{exec}}

```bash
ubuntu $ wash --version
wash 0.18.0
```

### Getting familar with `wash`

Interact and manage wasmCloud applications, projects, and runtime environments

`wash`{{exec}}

### Startup WasmCloud

Great, now we can start WasmCloud:

`wash up`{{exec}}

This will expose the WasmCloud control plane on port 4000. You can verify that the control plane is running accessing the WebUI: [localhost:4000]({{TRAFFIC_HOST1_4000}}).

Congratulations, you just successfully started WasmCloud and are now ready to deploy your first WebAssembly modules.
