### Deploying our first app

Lets deploy a simple service.

```
wash start actor wasmcloud.azurecr.io/dogs-and-cats:0.2.4
```{{exec}

We will be able to see our deployed actor if we check the inventory of our node:

```
wash get inventory $(wash get hosts -ojson | jq -r '.hosts[0].id')
```{{exec}}

Of course you will also see the deployed actor in the UI on [localhost:4000]({{TRAFFIC_HOST1_4000}}).

Now the actor alone can't do anything, as it first needs a couple of capabilities in order to be called via HTTP:

```
wash start provider wasmcloud.azurecr.io/httpserver:0.17.0
wash start provider wasmcloud.azurecr.io/httpclient:0.7.0
```{{exec}}

Now that we have deployed the capability providers, we now need to link them to our actor

```
wash link put MCUCZ7KMLQBRRWAREIBQKTJ64MMQ5YKEGTCRGPPV47N4R72W2SU3EYMU VAG3QITQQ2ODAOWB5TTQSDJ53XK3SHBEIFNK4AYJ5RKAX2UNSCAPHA5M wasmcloud:httpserver ADDRESS=0.0.0.0:8080
wash link put MCUCZ7KMLQBRRWAREIBQKTJ64MMQ5YKEGTCRGPPV47N4R72W2SU3EYMU VCCVLH4XWGI3SGARFNYKYT2A32SUYA2KVAIV2U2Q34DQA7WWJPFRKIKM wasmcloud:httpclient
```{{exec}}

Again we will be able to see all this in the node inventory:

```
wash get inventory $(wash get hosts -ojson | jq -r '.hosts[0].id')
```{{exec}}
