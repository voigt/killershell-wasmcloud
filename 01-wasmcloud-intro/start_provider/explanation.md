### What is a Capability Provider?

A capability is an abstraction or representation of a non-functional requirement; some functionality required by your actor that is not considered part of the core business logic. As you write an actor that exposes some data over a RESTful endpoint, the HTTP server and the database are not parts of your business logic, they are services used by your actor--capabilities.

In wasmCloud, capability providers are self-contained processes that implement a capability contract, which corresponds with a well-defined API. A capability contract ID is a unique name that identifies an interface or service abstraction. By convention, capability contract IDs contain a vendor ID prefix (the vendor that defines the contract, not necessarily a specific implementation). For example, the following is a list of the first-party capability contract IDs supported by wasmCloud (and, for each of these contract IDs, wasmCloud has implemented a default capability provider):

- `wasmcloud:httpserver`
- `wasmcloud:httpclient`

We will skip the anatomy of a Capability provider for now and focus on "using" them during this course. If you are anyways interested in how they can be implemented, you can find more information in the [wasmCloud documentation](https://wasmcloud.com/docs/fundamentals/capabilities/create-provider/rust).

Lets start a Capability Provider!