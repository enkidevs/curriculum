---
author: nem035
aspects:
  - introduction
  - workout
type: normal
category: must-know
links:
- '[What is a Container?](https://www.docker.com/what-container){documentation}'
- '[Six essentials on Docker Containers](https://www.plesk.com/blog/business-industry/docker-containers-explained/){article}'
---

# Containers

---
## Content

Containers are a way of isolating an application with its own environment. It's a lightweight alternative to full-blown virtualization.

They are the fundamental building blocks of Docker and effectively represent runtime instances of Docker images (more on Docker images later).

A container can be viewed as an independent software environment that includes everything it needs to execute. We can use containers to isolate applications from each other and from the underlying infrastructure they are running on.

Containerization involves bundling an application together with all of its related configuration files, libraries and dependencies required for it to run in an efficient and bug-free way across different computing environments.

Docker established containers as a generalized way to package applications into hermetically sealed cross-platform units of deployment.

A container can be created through the Docker CLI using the `docker container create` command:

```bash
# create a container from an `nginx` image
docker container create nginx

# create a container from an `nginx` image,
# and give it the name `enki`
docker container create --name enki nginx
```

To start or stop the container, we can do the following:

```bash
# start the enki container
docker container start enki

# stop the enki container
docker container stop enki
```

In fact, creating and starting containers happens so frequently in Docker that we have a command to do both at the same time, called `docker run`.

In essence: `docker run = docker container create + docker container start`

```bash
# create and start a container
# give it the name `enki`,
# expose port 80 from within the container
# to port 8080 on the host on which the
# container is running on,
# run it interactively in the shell
# and instantiate it from an `nginx` image,
docker run --name enki -p 8080:80 -it nginx
```

---
## Practice

Run a container (from the `mongo` image) with the name `db` and expose the port `27017` to port `3000` on host machine:

```bash
docker run -p ???:??? --name ??? -it ???
```

* 3000
* 27017
* db
* mongo
* mongodb
* docker
* container
* 80
* 8080

---
## Revision

To create and start a container in a single command, we use ???:

* `docker run`
* `docker go`
* `docker container create+start`
* `docker begin`
