---
author: nem035

levels:

  - beginner

  - basic


tags:

  - introduction

  - workout


type: normal

category: must-know

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---

# Port Forwarding

By default, a container is not accessible to the outside world.

To allow access we can tell Docker to expose a local container port to a port on the host machine.

```bash
❯ docker run \
  -p 127.0.0.1:<host-port>:<container-port> \
  -t someimage
```

Using the `EXPOSE` command in the Dockerfile, we can tell Docker that the container listens on the specified network ports at runtime:

```Dockerfile
EXPOSE <container-port>
```

**Note** that `EXPOSE` does not expose the port itself -- only `-p` will do that.

To list port mappings for a container, we can do:

```bash
❯ docker port <container-name>
```

Example:

```bash
❯ docker port mongo
27017/tcp -> 0.0.0.0:27017
```

We can also list a specific mapping by passing the port into the command:

```bash
❯ docker port mongo 27017
0.0.0.0:27017
```

## Practice

If we instantiate a container from an image created with this Dockerfile:

```Dockerfile
# ...

EXPOSE 9090

#...
```

Using the command:

```bash
❯ docker run -t enki-image
```

Will the container be accessible via port `9090` on the host it's running on?

???

* No
* Yes

## Revision

List all port mappings for the container `enki`:

```bash
docker ??? enki
```

* `port`
* `list`
* `port-list`
* `list-port`
