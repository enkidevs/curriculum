---
author: nem035
type: normal
category: must-know
links:
  - >-
    [What is the difference between a Docker image and a
    Container?](https://stackoverflow.com/questions/23735149/what-is-the-difference-between-a-docker-image-and-a-container){discussion}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Images

---

## Content

A Docker image represents a blueprint for creating containers.

It contains the specification for instantiating a container, including the environment in which the container will run, the application code it will need and other runtime settings such as environment variables and config files.

Containers derived from the same image are identical to each other in terms of their application code and runtime dependencies.

A Docker image is _immutable_; once an image is created it is never modified.

The only way to modify an image is to extend it and add the changes on top.

> 💡 An image that doesn't extend any other image is known as the _base_ image.

To make them space-efficient, images are designed to be composed of read-only[1] layers of other images.

> 💡 Every image starts with a blank layer known as _scratch_.

We can use the `docker history <IMAGE_ID>` command to show the layers of changes made on an image and their sizes.

For example:

```bash
docker history 3f8a4339aadd
```

The image ID shown above is based on the SHA[1] of the docker hub image.

would output something like:

```plain-text
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
3f8a4339aadd        2 days ago          /bin/sh -c #(nop)  CMD ["nginx" "-g" "daem...   0B
<missing>           2 days ago          /bin/sh -c #(nop)  STOPSIGNAL [SIGTERM]         0B
<missing>           2 days ago          /bin/sh -c #(nop)  EXPOSE 80/tcp                0B
<missing>           2 days ago          /bin/sh -c ln -sf /dev/stdout /var/log/ngi...   22B
<missing>           2 days ago          /bin/sh -c set -x  && apt-get update  && a...   53.2MB
<missing>           2 days ago          /bin/sh -c #(nop)  ENV NJS_VERSION=1.13.8....   0B
<missing>           2 days ago          /bin/sh -c #(nop)  ENV NGINX_VERSION=1.13....   0B
<missing>           2 weeks ago         /bin/sh -c #(nop)  LABEL maintainer=NGINX ...   0B
<missing>           2 weeks ago         /bin/sh -c #(nop)  CMD ["bash"]                 0B
<missing>           2 weeks ago         /bin/sh -c #(nop) ADD file:f30a8b5b7cdc9ba...   55.3MB
```

Image layers are cached[3] and can be reused between various images, saving storage.

Images are built using a special configuration file (commonly) named _Dockerfile_ and the `docker build` command.

---

## Practice

Docker images are composed of ???

- layers
- containers
- pixels
- fragments

---

## Revision

A Docker image can be modified.

???

- false
- true

---

## Footnotes

[1: Writable Layer]
It should be noted that running containers include a writable layer (the container layer) on top of the read-only layers of the image. Runtime changes, including any writes and updates to data and files, are saved in this container layer.

Thus, multiple concurrent running containers that share the same underlying image may have container layers that differ substantially (they don't interfere).

[2: SHA]
In cryptography, SHA (Secure Hash Algorithm) is a cryptographic hash function which takes an input and produces a hash value known as a message digest, typically rendered as a hexadecimal number.

[3: Image Layers are cached]
This is indicated by the `"Layer already exists"` message in the console output when pushing or pulling the image from a registry:

```bash
docker image pull enki:example
a82b6c66a6d4: Layer already exists
1941ca4a7a84: Layer already exists
a2ae92ffcd29: Layer already exists
example: digest: sha256:xxx size: 948
```
