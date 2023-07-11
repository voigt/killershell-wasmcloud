#### Start the actor

Lets deploy the actor:

`wash start actor wasmcloud.azurecr.io/dogs-and-cats:0.2.4`{{exec}}


#### Check whats installed

We will be able to see our deployed actor if we check the inventory of our node:

`wash get inventory $(wash get hosts -ojson | jq -r '.hosts[0].id')`{{exec}}

Of course you will also see the deployed actor in the UI on [localhost:4000]({{TRAFFIC_HOST1_4000}}).

Now the actor alone can't do anything, as it first needs a couple of capabilities in order to be called via HTTP.

Lets deploy capability providers!
