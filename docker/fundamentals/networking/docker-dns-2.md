---
author: nem035
aspects:
  - workout
  - deep
  - obscura
type: normal
category: caveats
---

# More about Docker DNS

---
## Content

Docker containers can have DNS aliases which behave pretty similarly to actual DNS aliases.

Note: We can use the command `--network-alias` to create a network-scoped alias for a container.

By sending requests to the alias instead of a particular container name, Docker will perform round-robin[1] load balancing and redirect it to one of the instances.

For Docker in particular, this is useful in production to get around the fact that container names are unique. For example, this allows us to install the same app twice (maybe `dev` and `test`) on the same docker server and we need to, in both of those, call something `search` in the DNS.

We can use an `nslookup` within our container to see a list of aliased containers for a particular DNS name.

```bash
# create a new virtual network
# (with default bridge driver)
# and name it `enki`
docker network create enki

# create a container from the
# elasticsearch:2 image,
# name it `example`,
# connect it to the `enki`
# network, and give it an alias
# `ikne`
docker run -d \
  --name example \
  --network enki \
  --network-alias=ikne \
  elasticsearch:2

# create another container, this
# time from `alpine` image,
# perform DNS lookup for `ikne`
# on the `enki` network, and
# remove the container
docker container run \
  --rm \
  --network enki alpine nslookup ikne
```

Here's what `nslookup` would output on `alpine`:

```
Name:      ikne
Address 1: 172.19.0.2 example.enki
```

---
## Footnotes

[1: RoundRobin]
[DNS Round Robin](https://en.wikipedia.org/wiki/Round-robin_DNS)
is the name of an IP address picking strategy for domain names where a domain name maps to a list of IPs instead of just a single IP. When a request is made to www.example.com, a DNS server would pick an IP address from that list, in a round-about order. Among other things, this allows distributing load across different servers because on different connection attempts clients would receive services from different providers.


