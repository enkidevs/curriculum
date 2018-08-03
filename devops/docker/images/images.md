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
  devops.identify-docker.1: 10
  cs.identify-linear-collection-data-structures-usage.0: 1000
  cs.identify-linear-collection-data-structures-usage.3: 1000

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---

# Images

---

## Content

A Docker image represents a blueprint for creating containers.

It contains the specification for instantiating a container, including the environment in which the container will run, the application code it will need and other runtime settings such as environment variables and config files.

A Docker image is immutable; it only contains read-only layers, meaning that once an image is created it is never modified.

Images can be composed from each other to minimize data repetition. This also means that if we need to modify an image, the only way is to extend it and add our changes on top.

To make them space-efficient, images are designed to be composed of layers of other images, allowing a minimal amount of data to be sent when transferring images over the network.

Every image starts with a blank layers known as scratch. Any change that happens after creates a new image layer.

It's important to note that image layers are cached and can be reused between various images, allowing for storage savings.

This is indicated by the `"Layer already exists"` message in the console output when pushing or pulling the image from a registry:

```bash
❯ docker image pull enki:example
a82b6c66a6d4: Layer already exists
1941ca4a7a84: Layer already exists
a2ae92ffcd29: Layer already exists
example: digest: sha256:9e81asffa499922aea9877fg6a652be11asd25lmin331322nybys size: 948
```

We can use the `docker history IMAGE_ID` command to show the layers of changes made on an image and their sizes.

```
❯ docker history nginx
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

Images are built using a special configuration file (usually) named Dockerfile and the `docker build` command.

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
