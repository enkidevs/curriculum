---
author: nem035
aspects:
  - workout
  - deep
  - obscura
type: normal
category: must-know
---

# More about Docker DNS

---
## Content

Docker containers can have DNS aliases which behave pretty similar to actual DNS aliases.

Note: We can use the command `--network-alias` to create a network-scoped alias for a container.

By sending requests to the alias instead of a particular container name, Docker will perform round-robin load balancing and redirect it to one of the instances.

_Note_: [DNS Round Robin](https://en.wikipedia.org/wiki/Round-robin_DNS) basically means that we can have different hosts (ip addresses) with DNS aliases that respond to the same DNS name and then particular hosts are selected in a Round Robin fashion (for example, each host can get a specific time slice as the main ip behind the DNS name)

For Docker particularly, this is useful in production to get around the fact that container names are unique. For example, this allows us to install the same app twice (maybe `dev` and `test`) on the same docker server and we need to, in both of those, call something `search` in the DNS.

We can use an `nslookup` within our container to see a list of aliased containers for a particular DNS name.

```bash
# create a new virtual network
# (default bridge driver)
docker network create enki

# create two containers from
# elasticsearch:2 image
# connected them to the `enki`
# network and give each container
# an alias `ikne`
docker run -d \
  --network enki \
  --network-alias=ikne \
  elasticsearch:2

# perform DNS lookup on the containers
# to see the aliases

# from alpine
docker container run \
  --rm \
  --network enki alpine nslookup ikne

# from centos
docker container run \
  --rm \
  --network enki centos curl -s ikne:9200
```

Here's what `nslookup` would output on `alpine`:

```
Name:      ikne
Address 1: 172.18.0.2 ikne.enki
Address 2: 172.18.0.3 ikne.enki
```

And here's the output on `centos`:

```json
{
  "name" : "Morning Star",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "sf2Ph9qfTi-MwpnSiXU-1Q",
  "version" : {
    "number" : "2.4.6",
    "build_hash" : "5376dca9f70f3abef96a77f4bb22720ace8240fd",
    "build_timestamp" : "2017-07-18T12:17:44Z",
    "build_snapshot" : false,
    "lucene_version" : "5.5.4"
  },
  "tagline" : "You Know, for Search"
}
```


