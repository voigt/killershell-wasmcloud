# Startup Wasmcloud

For your convenience, we already installed WasmCloud in this environment. Lets verify that wash is installed and working:

`wash --version`{{exec}}

```bash
ubuntu $ wash --version
wash 0.18.0
```

Great, now we can start WasmCloud:

### Startup WasmCloud

`wash up`{{exec}}

This will expose the WasmCloud control plane on port 4000. You can verify that the control plane is running by executing the following command:

`netstat -tulpen`{{exec}}

Or open the browser on 

[ACCESS NGINX]({{TRAFFIC_HOST1_80}})
[localhost:4000]({{TRAFFIC_HOST1_4000}})
[ACCESS PORTS]({{TRAFFIC_SELECTOR}})
