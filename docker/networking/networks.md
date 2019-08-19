---
author: nem035

levels:

  - beginner

  - basic


tags:

  - introduction
  - workout
  - deep


type: normal

category: must-know

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---
# Networks
---
## Content

When we start a container, in the background we are connecting to a particular docker network, which by default is the "bridge" network.

Each docker network routes out through a NAT firewall, which is the Docker Daemon configuring the host IP address on its default interface, so that our containers can get out and get back from the Internet or other networks.

Docker allows us to create virtual network, to which one or more containers can attach to.
A container can be attached to any number of virtual networks, including being not connected to any. Each network is an encapsulated environment that can have controlled communication with other docker networks or the Internet.

The default network in docker is called the `bridge` network.

Docker also allows us to skip virtual networks and use the host IP directly (with the `--network host` command)

This is a special network that skips the virtual networking of docker and attaches a container directly to the host interface. This sacrifices some security by eliminating the strict containerization boundaries but could gain some performance improvements in high throughput networks.

We can also remove the network interface completely with `--network none`, which removes `eth0` and only leaves us with the localhost interface in our container.

```bash
# Displays detailed information on a network
❯ docker network
  connect     # Connect a container to a network
  create      # Creates a new network with a name specified by the user
  disconnect  # Disconnects a container from a network
  inspect     # Displays detailed information on a network
  ls          # Lists all the networks created by the user
  prune       # Remove all unused networks
  rm          # Deletes one or more networks
```

```bash
# connects the `webserver` container to the `my_app` network
❯ docker network connect my_app webserver
```
