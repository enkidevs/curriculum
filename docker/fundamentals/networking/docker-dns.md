---
author: nem035
aspects:
  - workout
  - deep
type: normal
category: caveats
links:
  - '[Configure Container DNS](https://docs.docker.com/v17.09/engine/userguide/networking/default_network/configure-dns/){article}'
---

# Docker DNS

---
## Content

We can't really rely on IP addresses in a dynamic system like Docker.

Using static IPs for talking to containers is an anti-pattern and should be avoided. Containers can fail or move and IP addresses can easily become invalid.

This is why Docker DNS exists. Docker DNS uses container names as the equivalent of a host name for container communication.

Any non-bridge network has automatic DNS resolution for all the containers on that virtual network using container names. Two containers can find each other on the same network no matter what their IP is.

_Note_: The default `bridge` network doesn't come with this DNS behavior of container names.
That's why it's **always** good practice to create your own networks.

Containers shouldn't rely on IP's for inter-communication and should use container names instead.

Within Docker, a DNS for friendly names is built-in (if we use custom networks).

Here's how we would create a network between two containers and have them talk to each other:

```bash
# create a network
# and name it my_web_app
docker network create my_web_app

# create a container for an
# nginx server on our network
# named webserver1
docker run \
  --name webserver1 \
  --detach \
  --network my_web_app nginx:alpine

# create a container for another
# nginx server named webserver2
docker run \
  --name webserver2 \
  --detach \
  --network my_web_app nginx:alpine

# ping second container from the first
# (doing the opposite would work as well)
docker container exec \
  -it webserver1 ping webserver2
```

Here's an example of the output:

```bash
PING webserver2 (172.20.0.3): 56 data bytes
64 bytes from 172.20.0.3: seq=0 ttl=64 time=0.093 ms
64 bytes from 172.20.0.3: seq=1 ttl=64 time=0.117 ms
64 bytes from 172.20.0.3: seq=2 ttl=64 time=0.091 ms
64 bytes from 172.20.0.3: seq=3 ttl=64 time=0.285 ms
64 bytes from 172.20.0.3: seq=4 ttl=64 time=0.091 ms
```

---
## Practice

Docker DNS relies on ??? to locate and identify containers.

* names
* ip addresses
* zipcodes
* ids

---
## Revision

The suggested practice in Docker is for us to always create our own networks because the default `bridge` network doesn't have DNS.

???

* true
* false
