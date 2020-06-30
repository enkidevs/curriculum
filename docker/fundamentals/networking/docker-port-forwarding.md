---
author: nem035
type: normal
category: caveats
links:
  - >-
    [Binding Docker
    Ports](https://runnable.com/docker/binding-docker-ports){article}
---

# Port Forwarding


---

## Content

By default, a container is not accessible to the outside world.

To allow access we have to tell Docker to expose a local container port to a port on the host machine.

```plain-text
docker run \
  -p 127.0.0.1:<host-port>:<container-port> \
  -t someimage
```

Using the `EXPOSE` command in the Dockerfile, we can tell Docker that the container listens on the specified network port at runtime:

```plain-text
EXPOSE <container-port>
```

**Note** that `EXPOSE` does not expose the port itself, only `-p` will do that.

To list port mappings for a container, we can do:

```plain-text
docker port <container-name>
```

Example:

```plain-text
docker port mongo
```

Above would output something like this:

```plain-text
27017/tcp -> 0.0.0.0:27017
```

We can also list a specific mapping by passing the port into the command:

```plain-text
docker port mongo 27017
```

Above would output something like this:

```plain-text
0.0.0.0:27017
```


---

## Practice

If we instantiate a container from an image created with this Dockerfile:

```plain-text
# ...

EXPOSE 9090

#...
```

Using this exact command:

```plain-text
docker run -t enki-image
```

Will the container be accessible via port `9090` on the host it's running on?

???

- No
- Yes


---

## Revision

List all port mappings for the container `enki`:

```bash
docker ??? enki
```

- `port`
- `list`
- `port-list`
- `list-port`
 
