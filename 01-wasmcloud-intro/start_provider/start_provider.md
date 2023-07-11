### Deploy the capability providers

Our actor requires two capabilities:

1. It needs to be called via HTTP, so we need `wasmcloud.azurecr.io/httpserver:0.17.0`
2. It needs to call external resources via HTTP, so we need `wasmcloud.azurecr.io/httpclient:0.7.0`

Deploy them via:

- `wash start provider wasmcloud.azurecr.io/httpserver:0.17.0`{{exec}}
- `wash start provider wasmcloud.azurecr.io/httpclient:0.7.0`{{exec}}

> Note that this might take a little while, as the providers are downloaded from the internet.

After the providers started, they will be listed in our inventory:

```
wash get inventory $(wash get hosts -ojson | jq -r '.hosts[0].id')
```{{exec}}

Now that we have deployed the capability providers, we now need to link them to our actor
