---
author: nem035
aspects:
  - introduction
  - workout
type: normal
category: must-know
links:
- '[What is the difference between a Docker image and a Container?](https://stackoverflow.com/questions/23735149/what-is-the-difference-between-a-docker-image-and-a-container){discussion}'
---

# Images

---

## Content

A Docker image represents a blueprint for creating containers.

It contains the specification for instantiating a container, including the environment in which the container will run, the application code it will need and other runtime settings such as environment variables and config files.

Containers derived from the same image are identical to each other in terms of their application code and runtime dependencies.

The image ID is based on the SHA[1] of the docker hub image.

A Docker image is *immutable*; it only contains read-only layers, meaning that once an image is created it is never modified.

Images can be composed from each other to minimize data repetition. This also means that the only way to modify an image is to extend it and add the changes on top. 

To make them space-efficient, images are designed to be composed of layers of other images, allowing a minimal amount of data to be sent when transferring images over the network.

Every image starts with a blank layer known as *scratch*. Any change that happens after creates a new image layer. This means that image layers are read-only.

It should be noted that running containers include a writable layer (the container layer) on top of the read-only layers of the image. Runtime changes, including any writes and updates to data and files, are saved in this container layer. Thus, multiple concurrent running containers that share the same underlying image may have container layers that differ substantially (they don't interfere).

It's important to note that image layers are cached and can be reused between various images, saving storage.

This is indicated by the `"Layer already exists"` message in the console output when pushing or pulling the image from a registry:

```bash
docker image pull enki:example
a82b6c66a6d4: Layer already exists
1941ca4a7a84: Layer already exists
a2ae92ffcd29: Layer already exists
example: digest: sha256:xxx size: 948
```

When we run a container and change a file within an image, a copy-on-write[2] happens. This file is extracted from the image and stored in the container layer. Any layers that were unchanged are just reused. In this manner, the container contains all of its files and the files that differ from the image that was used to create the container.

We can use the `docker history <IMAGE_ID>` command to show the layers of changes made on an image and their sizes.

For example:

```bash
docker history nginx
```

would output something like:

```
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

An image that doesn't extend any other image is known as the base image.

Images are built using a special configuration file (commonly) named Dockerfile and the `docker build` command.

---

## Practice

Docker images are composed of ???

* layers
* containers
* pixels
* fragments

---

## Revision

A Docker image can be modified.

???

* false
* true

---
## Footnotes

[1: SHA]
In cryptography, SHA (Secure Hash Algorithm) is a cryptographic hash function which takes an input and produces a hash value known as a message digest, typically rendered as a hexadecimal number.

[2: copy-on-write]
"Copy on write" means that everyone has a single shared copy of the same data until it's written, and then a copy is made. This allows an efficient sharing of resources such that new data is only created during modification.
