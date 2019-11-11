---
author: nem035
aspects:
  - introduction
  - workout
  - deep
type: normal
category: must-know
---

# Container Philosophy

---

## Content

A great analogy for Docker containers can be found in the shipping industry. Before shipping containers were standardized, it was difficult to transport things across the world. With standardized containers, you just lend or buy a container, pack it with your things (in a way which makes sure the container is not negatively affected, like things sliding around) and from then on people know how to handle the container and therefore don’t need to adjust its contents too much.

Docker containers are meant to be **immutable** and **ephemeral**.

This allows us to build an immutable infrastructure where we only start, stop and deploy containers but never change them.
Any update is done by re-deploying a new container, not by changing an existing one.

We create containers using *images* (more on this to come).
