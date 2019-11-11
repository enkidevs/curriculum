---
author: nem035
aspects:
  - workout
  - deep
  - obscura
type: normal
category: feature
links:
- '[Use tmpfs mounts](https://docs.docker.com/storage/tmpfs/){documentation}'
---

# Tmpfs

---
## Content

If we are running Docker on Linux, besides bind-mounts and volumes, we can use a third type of storage mechanism called a *tmpfs* mount.

As opposed to volumes and bind mounts, a *tmpfs* mount is temporary, and is only persisted in the host memory. When the container stops, the tmpfs mount is removed, and files written there won’t be persisted.

This makes *tmpfs* mounts suitable for non-persistent state data and will also increase the container’s performance since it will not write into the container’s writable layer.

Another reason to use *tmpfs* mounts is for security reasons: if we don't want sensitive data to leak into the host or onto the container's writable layer.

Due to their temporary lifespan, *tmpfs* mounts cannot be shared among containers.

One way to specify usage of *tmpfs* is with the `--tmpfs` in the `docker run` command:

```bash
docker run --tmpfs ~/enki nginx
```

As with volumes and bind mounts, the recommended approach due to its better readability is to use the `--mount` flag:

```bash
docker run \
  --mount type=tmpfs,destination=~/enki nginx
```

---
## Practice

The *tmpfs* mount is a storage option in Docker where data is persisted ??? and is available only on ???.

* temporary
* Linux
* forever
* Windows
