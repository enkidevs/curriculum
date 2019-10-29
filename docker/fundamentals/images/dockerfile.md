---
author: nem035
aspects:
  - introduction
  - workout
type: normal
category: must-know
links:
- '[Best practices for writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/){article}'
- '[Dockerfile reference](https://docs.docker.com/engine/reference/builder/){documentation}'
---

# Dockerfile

---

## Content

A Dockerfile represents an image creation spec.

Essentially, it is just a text file with Docker-specific syntax that contains all the instructions the Docker daemon can use to build a specific image.

Instructions in a Dockerfile are executed in order, top-down.

The format of a Dockerfile is the following:

```Dockerfile
# Comment
INSTRUCTION arguments
```

Dockerfile instructions are UPPERCASE by convention to more easily distinguish them from their arguments.

Here's an example of a Dockerfile:

```Dockerfile
# Use the node image as the base image
FROM node

# Initialize an env var for this image
# that has a default value of "fun"
ENV ENKI="fun"

# the RUN command allows us to run any
# shell command or bash script available
# at this step of building the image.
# This command will have access to all
# environment variables created above it.
RUN echo "Learning Docker is $ENKI"

# Expose port 1234 on the container.
# We still have to use -p when running this
# container to link this port to an exposed
# port on the host in which the container is
# running
EXPOSE 1234

# CMD (and/or ENTRYPOINT) is a required
# command. It is a final command that will
# be run every time a container is launched
# (or restarted). Only one CMD is allowed.
# If there are multiple, last one wins.
CMD ["echo", "Docker", "is", "cool"]
```

To build an image from a Dockerfile within the `enki` directory, we would do:

```bash
docker build enki
```

Here's an example output of building an image from the Dockerfile above:

```
Sending build context to Docker daemon  23.29MB
Step 1/5 : FROM node
latest: Pulling from library/node
9cc2ad81d40d: Pull complete
e6cb98e32a52: Pull complete
ae1b8d879bad: Pull complete
42cfa3699b05: Pull complete
053cac798c4e: Pull complete
e11ff976ff71: Pull complete
6e754155fada: Pull complete
32d7c2fdf415: Pull complete
7acfea3f0d48: Pull complete
Digest: sha256:xxx
Status: Downloaded newer image for node:latest
 ---> b18afbdfc458
Step 2/5 : ENV ENKI="fun"
 ---> Running in 3560df900d1f
Removing intermediate container 3560df900d1f
 ---> 53a94ebce927
Step 3/5 : RUN echo "Learning Docker is $ENKI"
 ---> Running in e42c0617e98e
Learning Docker is fun
Removing intermediate container e42c0617e98e
 ---> 78a48477a76d
Step 4/5 : EXPOSE 1234
 ---> Running in a1df0ebf5605
Removing intermediate container a1df0ebf5605
 ---> 15a139f293da
Step 5/5 : CMD ["echo", "Docker", "is", "cool"]
 ---> Running in 3c8e7b309484
Removing intermediate container 3c8e7b309484
 ---> 8c40e5b0c9b9
Successfully built 8c40e5b0c9b9
```

A Dockerfile must start with a `FROM` instruction which initializes a new build stage and sets the base image for subsequent instructions.

`FROM` may only be preceded by one or more `ARG` instructions, which represent externally passed build arguments into the image building process.

```bash
docker build . \
  --build-arg EXAMPLE="this is an"
```

A Dockerfile must contain at least the `CMD` or the `ENTRYPOINT` instruction to indicate the start command for an image.

The `RUN` instruction executes the commands in a new layer on top of the current image. Each successive `RUN` instruction builds a new image layer on top of the previous one.

Each Dockerfile instruction result gets cached.

When evaluating each instruction, Docker will look for an existing image in its cache that it can reuse, rather than creating a new (duplicate) image.

This is why re-building images is faster than the initial build because we can re-use cached layers.

Whenever we change a line in the Dockerfile, the cached result for every line after it is invalidated and has to be re-computed.

Due to this, a good convention is to keep the things that change the least at the top of the Dockerfile and things that change the most at the bottom.

---

## Practice

A Dockerfile contains instructions the Docker daemon uses to build containers.

???

* false
* true

---

## Revision

The result of each Dockerfile instruction is cached and dependent on the cached result of the instruction before it.

???

* true
* false
