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

A great analogy for Docker containers can be found in the shipping industry. Before shipping containers were standardized, it was difficult to transport things across the world. Now, you only have to rent or buy a container and pack it safely with whatever you need to transport and the rest of the process is essentially automated. With standardization came automation, and with automation came efficiency.

Docker containers are meant to be **immutable** and **ephemeral**.

This allows us to build an immutable infrastructure where we only start, stop and deploy containers but never change them.
An update is done by re-deploying a new container, not by changing an existing one.

We create containers using *images* (more on this to come).
