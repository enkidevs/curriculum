---
author: nem035
aspects:
  - introduction
  - workout
  - deep
type: normal
category: best practice
links:
- '[Docker Volumes](https://docs.docker.com/storage/volumes/){documentation}'
- '[Manage data in Docker](https://docs.docker.com/storage/){documentation}'
---

# Volumes

---
## Content

Volumes represent a special location outside of a container's file system to store persistent data. This preserves the data through the container's lifespan and allows us to attach it to whatever container we want to(including multiple containers).

As far as the container is concerned, that volume is just a local file path.

This means that volumes require manual deletion and won't be removed by removing the container. Another consequence is that, since they are independent from containers, volumes do not increase the size of a container.

Volumes can be created using the `VOLUME` command in the Dockerfile, or by using the command line flags for `docker run`. The flags we can use are `--mount` or `--volume` (`-v` for short).

To use the `-v` flag to mount the `enki-volume` on the path `~/enki` within the filesystem of a container created from an `nginx` image, we would run:

```bash
docker run -v enki-volume:/~/enki nginx
#             ^^^^^^^^^^^:^^^^^^^^^^^^^
#  volume on host : volume on container
```

However, the recommended approach is to use the `--mount` which is more verbose than `-v` or `--volume`, the order of the values is not relevant, and the meaning of values is easier to understand.

Here's how we would run the same command as above using the `--mount` flag:

```bash
docker run --mount \
  source=enki-volume,target=/~/enki nginx
```

When creating a volume with `docker run`, if the volume at that path (or with that name) doesn't exist, docker will create one for us. If it does exist, docker will use the existing volume without creating a new one.

If you mount an empty volume into a container's directory in which files or directories already exist, these files or directories are copied into the volume.

If you mount a non-empty volume at the same place, the contents will be obscured by the volume and won't be available as long as the volume is mounted. It's important to note that the obscured files are not removed or altered, just inaccessible while the volume is mounted.

The direct way to create a volume is to use the `create` cli command.

```bash
docker volume create enki-volume
```

---
## Practice

Volume data is still available when we remove the container.

???

* true
* false
* true, but only with a safe exit
* true, but the data cannot be altered

---
## Revision

Multiple containers can share the same volume.

???

* true
* false
* true, but the data cannot be altered

---
## Quiz

### How much do you know about volumes in Docker containers?

Can Volumes increase the size of the container?

* No
* Yes
* Yes, if the container shares a volume with another container
* Yes, but only during the build process
