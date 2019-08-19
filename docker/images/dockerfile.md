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
  devops.dockerfiles.0: 10
  devops.dockerfiles.1: 10
  devops.dockerfiles.3: 10
  devops.dockerfiles.4: 10
  devops.dockerfiles.5: 10
  devops.dockerfiles.6: 10


links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
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

# Env variables
ENV DOCKER_LEARNING="fun"

# the RUN command allows us to run any shell command or bash script
# available at this step of building the image.
# This will have access to all environment variables created above it.
RUN echo "Hello from the Enki image"

# Expose port 1234 on the container (we still have to use -p to link this port to an exposed port on the host)
EXPOSE 1234

# CMD is a required command (and/or ENTRYPOINT)
# It is a final command that will be run every time a container is launched (or restarted).
# Only one CMD is allowed. If there are multiple, last one wins.
CMD ["echo", "learning", "Docker", "is", "fun"]
```

A Dockerfile must start with a `FROM` instruction which initializes a new build stage and sets the base image for subsequent instructions.

`FROM` may only be preceded by one or more `ARG` instructions, which represent externally passed build arguments.

A Dockerfile must contain at least the `CMD` or the `ENTRYPOINT` instruction to indicate the start command for an image.

The `RUN` instruction executes the commands in a new layer on top of the current image. Each successive `RUN` instructions builds a new image layer on top of the previous.

Each Dockerfile instruction result gets cached.

When evaluating each instruction, Docker will look for an existing image in its cache that it can reuse, rather than creating a new (duplicate) image.

Whenever we change a line in the Dockerfile, the cached result for every line after it is invalidated and has to be re-computed.

Due to this, a good convention is to keep the things that change the least at the top of the Dockerfile and things that change the most at the bottom.

---

## Practice

A Dockerfile contains instructions the Docker daemon uses to build containers.

???

* true
* false

---

## Revision

The result of each Dockerfile instruction is cached and dependent on the cached result of the instruction before it.

???

* true
* false
