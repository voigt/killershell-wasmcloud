# Startup Wasmcloud

### Getting ready

For your convenience, we already installed WasmCloud in this environment. Lets verify that wash is installed and working:

`wash --version`{{exec}}

```bash
ubuntu $ wash --version
wash 0.18.0
```

### Getting familar with `wash` and the wasmCloud host

The `wash`-cli is your multitool to work with WasmCloud.

It is not only used to configure and operate a WasmCloud host, but also to build, publish and run wasmCLoud aplications.

Enter `wash`{{exec}} to see the options provided by the tool.

Lets bootstrap a local wasmCloud environment using `wash up`:

`wash up`{{exec}}

You should see some logs about a successfully started wasmCloud Host.

### Accessing the UI

This will expose the WasmCloud control plane on port 4000. You can verify that the control plane is running accessing the WebUI: [localhost:4000]({{TRAFFIC_HOST1_4000}}).

Congratulations, you just successfully started WasmCloud and are now ready to deploy your first WebAssembly modules.
