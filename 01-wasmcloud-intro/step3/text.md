### Interacting with the wash cli

### Listing wasmCloud hosts

You can get a list of hosts that are part of your wasmCloud cluster via `wash get hosts`.

`wash get hosts`{{exec}}

```
$ wash get hosts


  Host ID                                                    Uptime (seconds)
  <very-long-host-id>   936
```

### Listing a hosts inventory inventory

You can describe a host and see whats running on it via `wash get inventory <host-id>`

Lets describe our host:

```
wash get inventory $(wash get hosts -ojson | jq -r '.hosts[0].id')
```{{exec}}

Which should output something like this:

```
$ wash get inventory $(wash get hosts -ojson | jq -r '.hosts[0].id')


  Host Inventory (<very-long-host-id>)

  hostcore.arch                         x86_64
  hostcore.os                           linux
  hostcore.osfamily                     unix

  No actors found

  No providers found
```


Note that all this information is queried from NATS.
