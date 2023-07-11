### What is an Actor?

An actor is the smallest unit of deployable, portable compute within the wasmCloud ecosystem. Actors are small WebAssembly modules that can handle messages delivered to them by the host runtime and can invoke functions on capability providers, provided they have been granted the appropriate privileges.

Actors can be stored in any OCI-Compatible runtime, such as a Docker registry, or a registry such as Azure Container Registry. Actors can be written in any language that can compile to WebAssembly, such as Rust, C, C++, AssemblyScript, TinyGo, and many others.

> ##### 💡 Note
> 
> If you are familiar to the concept of Serverless Functions like AWS Lambda, Azure Functions, or Google Cloud Functions, you can think of actors as a similar concept, but with a few key differences:
>
> - Actors are not limited to a single language, but can be written in any language that can compile to WebAssembly.
> - Actors are only allowed to do things that they have been granted permission to do. This is in contrast to serverless functions, which are typically granted full access to the host environment they are running in.
> - Actors are not limited to a single cloud provider, but can be deployed to any wasmCloud host, regardless of where it is running.
>

Lets see an example!