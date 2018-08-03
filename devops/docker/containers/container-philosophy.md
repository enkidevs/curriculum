---
author: nem035

levels:

  - beginner

  - basic


tags:

  - introduction
  - workout
  - deep


type: normal

category: must-know

standards:
  devops.identify-docker.1: 10

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---

# Container Philosophy

---

## Content

A great analogy to Docker containers can be found in the shipping industry. Before shipping containers were standardized, it was difficult to transport things across the world. With standardized containers, you just lend or buy a container, pack it with your things (in a way which makes sure the container is not negatively affected, like things sliding around) and from then on people know how to handle the container and don’t need to adjust too much to what’s inside. Huge cranes loading and unloading containers on ships.

Docker containers are meant to be **immutable** and **ephemeral**.
This allows us to build an immutable infrastructure where we only start/stop and re-deploy containers but never change them.
Any update is done by re-deploying a new container, not by changing existing ones.

Containers derived from the same image are identical to each other in terms of their application code and runtime dependencies.

But unlike images, which are read-only, running containers includes a writable layer (the container layer) on top of the read-only layers of the image. Runtime changes, including any writes and updates to data and files, are saved in the container layer. Thus, multiple concurrent running containers that share the same underlying image may have container layers that differ substantially.
