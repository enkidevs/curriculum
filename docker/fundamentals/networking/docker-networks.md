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

When we start a container, in the background we are connecting to a particular Docker network.

Each Docker network routes out through a NAT firewall, which is the Docker Daemon configuring the host IP address on its default interface, so that our containers can get out and get back from the Internet or other networks.

Docker allows us to create a virtual network, to which one or more containers can attach to.

A container can be attached to any number of virtual networks, including zero. Each network is an encapsulated environment that can have controlled communication with other Docker networks or the Internet.

The default network in Docker is called the `bridge` network.

Docker also allows us to skip virtual networks and use the host IP directly (with the `--network host` command).

This is a special network that skips the virtual networking of Docker and attaches a container directly to the host interface. This sacrifices some security by eliminating the strict containerization boundaries but could gain some performance improvements in high throughput networks.

We can also remove the network interface completely with `--network none`, which removes `eth0` and only leaves us with the localhost interface in our container.

To create a network and hook it up to your container:

```bash
# Create a network name enki
docker network create enki

# Connect a container called world
# to the enki network
docker network connect enki world
```

To display information about the network:

```bash
# Displays detailed information
# on the enki network
docker network inspect enki
```

The above command would output something like this:

```json
[
  {
    "Name": "enki",
    "Id": "a7bd5517aae13151d382886378e38bba906a09bd1461536c8496d5b734e6bf0a",
    "Created": "2019-08-23T05:41:26.3021564Z",
    "Scope": "local",
    "Driver": "bridge",
    "EnableIPv6": false,
    "IPAM": {
      "Driver": "default",
      "Options": {},
      "Config": [
        {
          "Subnet": "xxx.xx.x.x/xx",
          "Gateway": "xxx.xx.x.x"
        }
      ]
    },
    "Internal": false,
    "Attachable": false,
    "Ingress": false,
    "ConfigFrom": {
      "Network": ""
    },
    "ConfigOnly": false,
    "Containers": {
      "eb7bfcb670c6739be1a189229fa6580dcf71f3e10199161d2026552fd553630e": {
        "Name": "world",
        "EndpointID": "82db1f844e00f938c13b35688b9d371ce3d70a2b8d798572390a3277c2031eb2",
        "MacAddress": "xx:xx:xx:xx:xx:xx",
        "IPv4Address": "xxx.xx.x.x/xx",
        "IPv6Address": ""
      }
    },
    "Options": {},
    "Labels": {}
  }
]
```

To see which networks you created:

```bash
# Lists all the networks created by the user
docker network ls
```

The command above would output something like this:

```
NETWORK ID          NAME                DRIVER              SCOPE
1886960bdfd6        bridge              bridge              local
72eaae34f722        docker_gwbridge     bridge              local
a7bd5517aae1        enki                bridge              local
501efd23d607        host                host                local
r6kesov18daq        ingress             overlay             swarm
39c716c01a9f        none                null                local
```

---
## Practice

The default network in Docker is called ???

* bridge
* train
* host
* NAT

---
## Revision

```bash
# Connect a container called "enki"
# to a network called "world"
docker network ??? ??? ???
```

* connect
* world
* enki
