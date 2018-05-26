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
# Docker DNS
---
## Content

We can't really rely on IP addresses in a dynamic system like Docker.
Using static IPs for talking to containers is an anti-pattern and should be avoided.
Containers can fail or move and IP addresses can easily become invalid.

This is why Docker DNS exists. Docker DNS uses container names as the equivalent
of a host name for container communication.

Any non-bridge network has automatic DNS resolution for all the containers on that virtual network using container names. Two containers can find each other on the same network no matter what their ip is.

_Note_: The default `brigde` network doesn't come with this DNS behavior of container names.
That's why it's **always** good practice to create your own networks.

```bash
# create network for a webapp
❯ docker network create my_web_app

# create container for one nginx server on our network
❯ docker run --name webserver1 --detach --network my_web_app nginx:alpine

# create container for another nginx server
❯ docker run --name webserver2 --detach --network my_web_app nginx:alpine

# ping second container from the first
# doing the opposite would work as well
❯ docker container exec -it webserver1 ping webserver2
```

```
❯ docker container exec -it webserver1 ping webserver2
PING webserver2 (172.20.0.3): 56 data bytes
64 bytes from 172.20.0.3: seq=0 ttl=64 time=0.093 ms
64 bytes from 172.20.0.3: seq=1 ttl=64 time=0.117 ms
64 bytes from 172.20.0.3: seq=2 ttl=64 time=0.091 ms
64 bytes from 172.20.0.3: seq=3 ttl=64 time=0.285 ms
64 bytes from 172.20.0.3: seq=4 ttl=64 time=0.091 ms
```

Docker containers can have DNS aliases which behave pretty similar to actual DNS aliases.

We can use the command `--network-alias` to create a network-scoped alias for a container.

DNS Round Robbin Docker example using aliases.

_Note_: [DNS Round Robin](https://en.wikipedia.org/wiki/Round-robin_DNS) basically means that we can have different hosts (ip addresses) with DNS aliases that respond to the same DNS name and then particular hosts are selected in a Round Robin fashion (for example, each host can get a specific time slice as the main ip behind the DNS name)

For Docker particularly, this is useful in production to get around the fact that container names are unique. For example, this allows us to install the same app twice (maybe `dev` and `test`) on the same docker server and we need to, in both of those, call something `search` in the DNS.

We can use do an `nslookup` within our container to see a list of aliased containers for a particular DNS name.

```bash
# create a new virtual network (default bridge driver)
❯ docker network create dude

# create two containers from elasticsearch:2 image
# connected them to the `dude` network
# and give each container an alias `search`
❯ docker run -d --network dude --network-alias=search elasticsearch:2
❯ docker run -d --network dude --network-alias=search elasticsearch:2

# perform DNS lookup on the containers to see the aliases

# from alpine
❯ docker container run --rm --network dude alpine nslookup search

# from centos
❯ docker container run --rm --network dude centos curl -s search:9200
```

```
❯ docker container run --rm --network dude alpine nslookup search
nslookup: can't resolve '(null)': Name does not resolve

Name:      search
Address 1: 172.18.0.2 search.dude
Address 2: 172.18.0.3 search.dude
```

Since DNS Round Robin isn't a proper Load Balancer, we might need to run the next command a few times until we see both containers:

```
❯ docker container run --rm --network dude centos curl -s search:9200
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

❯ docker container run --rm --network dude centos curl -s search:9200
{
  "name" : "Stephen Strange",
  "cluster_name" : "elasticsearch",
  "cluster_uuid" : "iBT3fP6-TSe08WEoa5SIsA",
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

Summary

* Containers shouldn't rely on IP's for inter-communication and should use container names instead.
* DNS for friendly names is built-in if you use custom networks
