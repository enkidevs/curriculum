---
author: nem035
type: normal
category: must-know
links:
  - >-
    [Best practices for writing
    Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/){article}
  - >-
    [Dockerfile
    reference](https://docs.docker.com/engine/reference/builder/){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Dockerfile Instructions

---

## Content

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

This is why re-building an image is faster than the initial build because we can re-use the cached layers.

> 💡 Whenever we change a line in the Dockerfile, the cached result for every line after it is invalidated and has to be re-computed.

Due to this, a good convention is to keep the things that change the least at the top of the Dockerfile and things that change the most at the bottom.

When we run a container and change a file within an image, a copy-on-write[1] happens. This file is extracted from the image and stored in the container layer. Any layers that were unchanged are just reused. In this manner, the container contains all of its files and the files that differ from the image that was used to create the container.

---

## Practice

A Dockerfile contains instructions the Docker daemon uses to build containers.

???

- false
- true

---

## Revision

The result of each Dockerfile instruction is cached and dependent on the cached result of the instruction before it.

???

- true
- false

---

## Footnotes

[1: copy-on-write]
"Copy on write" means that everyone has a single shared copy of the same data until it's written, and then a copy is made. This allows an efficient sharing of resources such that new data is only created during modification.
