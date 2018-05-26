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
  devops.run-docker.4: 10

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---
# Image Tags
---

## Content

A docker image tag is similar concept to git tags. It is really just a pointer to a specific image commit (id).
Multiple tags can point to the same image commit (id).

The default tag is called `"latest"`. It is important to know that that is just the default tag and it is up to the image owner to make sure the newest version gets assigned this tag.

```bash
# pull a docker image with the tag 8.9.1 from docker hub
# if the tag is omitted, docker pulls the `latest` tag
❯ docker pull node:8.91
```

Only official images are allowed on Dockerhub without a user attached to the repo name. For example, the `nginx` is the only official image for Nginx built by the Docker team and Nginx team. If we want to publish our own nginx image, we have to re-tag it with our username, i.e. `enki/nginx`, and then push.

```bash
❯ docker image tag nginx:latest enki/nginx:latest
```
