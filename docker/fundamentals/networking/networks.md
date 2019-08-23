---
author: nem035
aspects:
  - workout
  - deep
type: normal
category: must-know
links:
  - '[Docker Network Overview](https://docs.docker.com/network/){documentation}'
---

# Networks

---
## Content

When we start a container, in the background we are connecting to a particular docker network.

Each docker network routes out through a NAT firewall, which is the Docker Daemon configuring the host IP address on its default interface, so that our containers can get out and get back from the Internet or other networks.

Docker allows us to create a virtual network, to which one or more containers can attach to.
A container can be attached to any number of virtual networks, including being not connected to any. Each network is an encapsulated environment that can have controlled communication with other docker networks or the Internet.

The default network in docker is called the `bridge` network.

Docker also allows us to skip virtual networks and use the host IP directly (with the `--network host` command).

This is a special network that skips the virtual networking of docker and attaches a container directly to the host interface. This sacrifices some security by eliminating the strict containerization boundaries but could gain some performance improvements in high throughput networks.

We can also remove the network interface completely with `--network none`, which removes `eth0` and only leaves us with the localhost interface in our container.

```bash
# Create a network name enki
docker network create enki

# Connect a container called world
# to the enki network
docker network connect enki world

# Displays detailed information
# on the enki network
docker network inspect enki

# Lists all the networks created by the user
docker network ls
```
