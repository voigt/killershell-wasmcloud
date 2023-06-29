# Startup Wasmcloud

There are multiple ways to install wasmcloud. The easiest way is to use the `curl` command to download the latest release and install it. 

### Execute a command per click

Download

The following script will add Wasmcloud packages to your Repository:

`curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | sudo bash
`{{exec}}

Now you can install wash-cli, the CLI client to interact with wasmcloud: Please note, that we additionally need to install openssl, as it is a dependency to wash-cli.

`sudo apt install wash openssl`{{exec}}

### Verifying the installation

Make sure the installation was successful by running the following command:

`wash --version`{{exec}}

Which should answer with something like this:

```bash
ubuntu $ wash --version
wash 0.18.0
```
