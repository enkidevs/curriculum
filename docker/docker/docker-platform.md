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

standards:
  devops.identify-docker.0: 10
  devops.identify-docker.1: 10

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---
# Docker Platform
---

Docker uses a client-server architecture consisting of 2 parts.

1. The Docker daemon (`dockerd`) which listens for requests through the Docker REST API and manages Docker objects such as containers, images, networks, and volumes.

2. The Docker client (`docker`) which is front-facing CLI tool that users primarily interact with. It sends all commands to `dockerd` via the Docker REST API to do the heavy-lifting.

The main parts of Docker that we interact with on a daily basis are Docker Objects such as images, containers, networks, volumes, plugins, etc.

The Docker platform also has public registries (Docker Hub and Docker Cloud) that anyone can use to store and share Docker images.

Any Docker container can run on any server that has the Docker daemon installed, regardless of the underlying operating system.


---
## Practice

What do the Docker daemon and Docker CLI use to communicate? ???

* Docker REST API
* Docker SOAP API
* Docker channels
* Docker Objects

---
## Revision

The two main parts of the Docker architecture are the ??? and the ???

* Docker CLI
* Docker daemon
* Docker Object
* Docker container
