---
author: nem035
aspects:
  - introduction
  - workout
type: normal
category: must-know
links:
- '[Docker Registry](https://docs.docker.com/registry/){documentation}'
- '[Docker Hub](https://hub.docker.com/){website}'
---

# Image Registries

---
## Content

A Docker image registry stores Docker images. We can think of a Docker image registry being to Docker images as Github is to code repositories.

By default, Docker is configured to look for images in its own registry called Docker Hub, but users can also run their own private registry.

Docker Hub is public and allows anybody to store publicly available images.

To pull an image from DockerHub, we can use `docker pull`:

```bash
# pull a docker image named
# nginx from DockerHub
docker pull nginx
```

The command above would output something like:

```
Using default tag: latest
latest: Pulling from library/nginx
1ab2bdfe9778: Pull complete
a17e64cfe253: Pull complete
e1288088c7a8: Pull complete
Digest: sha256:53ddb41e46de3d63376579acf46f9a41a8d7de33645db47a486de9769201fec9
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest
```

Similarly, we can also add images to the registry by pushing them:

```bash
# push a docker image named
# enki to DockerHub
docker push enki
```

Alternatively, you can host your docker images on GCP, AWS, Azure, GitLab, JFrog or even on your own system.

### Self-hosted registry

You can use the `registry` image from DockerHub to self host a registry.

```bash
# Launch the registry on port 1234
# We are pulling the version 2
# of the `registry` image which is
# the official DockerHub image for
# creating your own registries
docker run -d -p 1234:1234 \
  --restart=always \
  --name enki-registry registry:2

# Copy ubuntu image from DockerHub
# to your registry
docker pull ubuntu:16.04
docker tag ubuntu:16.04 localhost:1234/ubuntu
docker push localhost:1234/ubuntu
```

---
## Practice

Images stored on DockerHub are ???

* public
* private

---
## Revision

The default registry for Docker images is called ???

* DockerHub
* DockerStash
* DockerImages
* DockerPictures
