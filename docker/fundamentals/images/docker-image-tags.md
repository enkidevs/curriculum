---
author: nem035
aspects:
  - introduction
  - workout
type: normal
category: must-know
links:
- '[Quick introduction to Docker tags](https://www.freecodecamp.org/news/an-introduction-to-docker-tags-9b5395636c2a/){article}'
---

# Image Tags

---
## Content

A docker image tag is a similar concept to git tags. It is a pointer to a specific image commit (id) that serves to identify the image in a meaningful way.
Multiple tags can point to the same image commit (id).

The default tag is called `"latest"`. It is important to know that this is just the default tag and it is up to the image owner to ensure that the newest version is assigned this tag (Docker does not enforce this).

Only official images are allowed on Dockerhub without a user attached to the repo name. For example, the `nginx` is the only official[1] image for Nginx built by the Docker team and Nginx team. If we want to publish our own nginx image, we have to re-tag it with our username, i.e. `enki/nginx`, and then push it to the registry.

```bash
# pull the official nginx image from Dockerhub
docker pull nginx

# tag the image with our username
docker image \
  tag nginx:latest enki/nginx:latest

# push the newly tagged image
# into our own DockerHub profile
docker push enki/nginx:latest
```

---
## Footnotes

[1: nginx]
[The official Nginx Docker image called `nginx` can be found on DockerHub](https://hub.docker.com/_/nginx)
