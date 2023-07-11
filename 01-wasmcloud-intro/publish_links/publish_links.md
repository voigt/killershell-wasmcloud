#### Link Actor and Providers

You can link an actor and provider using `wash link put <actor-id> <capability-provider-is> [paramaters]`

So in our case this is:


#### Link Actor and httpserver:

1. `wash link put MCUCZ7KMLQBRRWAREIBQKTJ64MMQ5YKEGTCRGPPV47N4R72W2SU3EYMU VAG3QITQQ2ODAOWB5TTQSDJ53XK3SHBEIFNK4AYJ5RKAX2UNSCAPHA5M wasmcloud:httpserver ADDRESS=0.0.0.0:8080`{{exec}}

Note that we provide an `ADDRESS` parameter, as the httpserver needs to know on which port it should listen.

#### Link Actor and httpclient:

2. `wash link put MCUCZ7KMLQBRRWAREIBQKTJ64MMQ5YKEGTCRGPPV47N4R72W2SU3EYMU VCCVLH4XWGI3SGARFNYKYT2A32SUYA2KVAIV2U2Q34DQA7WWJPFRKIKM wasmcloud:httpclient`{{exec}}

#### Check whats installed

Again we will be able to see all this in the node inventory:

`wash get inventory $(wash get hosts -ojson | jq -r '.hosts[0].id')`{{exec}}

If you did everything correctly, you will be able to call the actor via HTTP [localhost:8080]({{TRAFFIC_HOST1_8080}}) and see cute cats and dogs.

🎉
