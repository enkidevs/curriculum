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
  devops.run-docker.1: 10

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---

# Volumes

---

## Content

Although containers are immutable and their data gets removed when they do, it is still useful sometimes to persist data through a container(s) lifecycle.

In an ideal case, our containers should not contain unique data mixed in with the application binaries and should just recreate their contents on each deployment. However, this can't always be done.

Docker has 2 approaches to deal with persistent data:

1.  Volumes
2.  Bind-mounts

Volumes represent a special location outside of a container's file system to store persistent data. This preserves the data through the container lifespan and allows us to attach it to whatever container we want (including multiple containers). As far as the container is concerned, that volume is just a local file path. This means that volumes require manual deletion and won't be removed by removing the container. Another consequence is that volumes do not increase the size of a container.

Volumes can be created using the `VOLUME` command in the Dockerfile, or by using the command line flags for `docker run`. The flags we can use are `--mount` or `--volume` (`-v` for short). The recommended approach is to use the `--mount` which is more verbose than `-v` or `--volume`, but the order of the values is not relevant, and the meaning of values is easier to understand.

```bash
❯ docker run -v webserver-volume:/~/dev/webserver nginx
#               ^^^^^^^^^^^^^^^^:^^^^^^^^^^^^^^^^
#               volume on host  : volume on container
```

```bash
❯ docker run --mount source=webserver-volume,target=/~/dev/webserver nginx
```

When creating a volume with `docker run`, if the volume at that path (or with that name) doesn't exist, docker will create one for use. If it does exists, docker will use the existing volume without creating a new one.

We can also create volumes directly using the `create` cli command.

```bash
❯ docker volume create abc
```

If our container generates non-persistent state data, we can use the `tmpfs` mount to avoid storing the data anywhere permanently. This will also increase the container’s performance since it will not write into the container’s writable layer.

Due to their temporary lifespan, `tmpfs` mounts cannot be shared among containers.

We can specify usage of `--tmpfs` in the `docker run` command:

```bash
❯ docker run --tmpfs ~/dev/webserver nginx
# or using the --mount flag
❯ docker run --mount type=tmpfs,destination=~/dev/webserver nginx
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

--

## Quiz

### How much do you know about volumes in Docker containers?

Can Volumes increase the size of the container?

* No
* Yes
* Yes, if the container shares a volume with another container
* Yes, but only during the build process
