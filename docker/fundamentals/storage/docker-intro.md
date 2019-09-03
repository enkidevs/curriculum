---
author: nem035
aspects:
  - deep
  - workout
type: normal
category: must-know
links:
- '[Manage data in Docker](https://docs.docker.com/storage){documentation}'
- '[Managing Persistence for Docker Containers](https://thenewstack.io/methods-dealing-container-storage/){article}'
---

# Storage Intro

---
## Content

By design, data in Docker containers doesn’t persist when that container no longer exists. When a container is deleted, all of the data written to the container is deleted along with it.

Since Docker containers are meant to be created many times over, they aren't suitable for storing persisted data.

As a best practice, data is isolated from a container. This means that data management is distinctly independent from the container's lifecycle.

Even though containers are immutable and their data gets removed when they do, it is still useful sometimes to persist data through a container's lifecycle.

In an ideal case, our containers should not contain unique data mixed in with the application binaries and should just recreate their contents on each deployment. However, this can't always be done.

One example would be running a database container many times over without losing the data in the actual database.

To achieve data persistence for containers, Docker generally provides two options:

1.  Volumes
2.  Bind-mounts

From the container's perspective, it doesn't matter which type of storage we use, that is abstracted away. As far as the container is concerned, no matter how storage is actually mounted, the container thinks it is dealing with a directory or an individual file in its own filesystem.

Let's now take a look at both options of persisting data in Docker containers.

---
## Practice

When a Docker container is destroyed, all of its data is still available.

???

* false
* true

---
## Revision

There are two ways to persist data beyond the lifetime of a Docker container. The first one is to use a volume and the second one is to use a ???.

* bind-mount
* call-mount
* file-mount
* data-mount
