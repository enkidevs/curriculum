---
author: nem035
aspects:
  - introduction
  - workout
type: normal
category: must-know
links:
- '[What is Docker Engine?](https://docs.docker.com/engine/){documentation}'
- '[Installing Docker](https://docs.docker.com/install/){documentation}'

---

# Docker Engine

---
## Content

Docker uses a client-server architecture consisting of 2 parts.

1. The Docker daemon (`dockerd`), which listens for requests through the Docker REST API and manages Docker Objects such as containers, images, networks, and volumes.

2. The Docker client (`docker`), which is a front-facing CLI tool that users primarily interact with. It sends all commands to `dockerd` via the Docker REST API to do the heavy-lifting.

The main parts of Docker that we interact with on a daily basis are Docker Objects such as images, containers, networks, volumes, plugins, etc.

The Docker platform also has public registries (Docker Hub and Docker Cloud) that anyone can use to store and share Docker images.

Any Docker container can run on any server that has the Docker daemon installed, regardless of the underlying operating system.

---
## Practice

The Docker daemon and Docker CLI use ??? to communicate.

* Docker REST API
* Docker SOAP API
* Docker channels
* Docker Objects

---
## Revision

The two main parts of the Docker architecture are the ???

* CLI and daemon
* daemon and container
* Object and namespaces
* Container and Hub
