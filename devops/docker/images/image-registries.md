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
  devops.dockerfiles.1: 10
  devops.dockerfiles.2: 10

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---
# Image Registries
---
## Content


Docker platforms comes with an image registry called Docker Hub on which anybody can store public images.

We can think of Docker Hub being to Docker images what Github is to code repositories.

When creating an image, Docker is configured by default to look for images on Docker Hub.

```bash
# pull a docker image with the tag 8.9.1 from docker hub
# if the tag is omitted, docker pulls the `latest` tag
❯ docker pull node:8.91
```

Docker Hub represents a public repository for docker images. In many ways, we can compare docker images to git repositories and Docker Hub to Github.

Image ID is based on the SHA of the docker hub image.

When we run a container and change files within an image, a copy-on-write happens. That file is extracted from the image and stored in the container layer. Any layers that were unchanged are just reused. In this manner, the container contains all of its files and the files that differ from the image we used to create the container.

We can see this happening when we `push` or `pull` a docker image:

```bash
❯ docker image push enki:example
a82b6c66a6d4: Layer already exists
1941ca4a7a84: Layer already exists
a2ae92ffcd29: Layer already exists
example: digest: sha256:9e81asffa499922aea9877fg6a652be11asd25lmin331322nybys size: 948
```
