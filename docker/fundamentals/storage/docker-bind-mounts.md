---
author: nem035
aspects:
  - introduction
  - workout
  - deep
type: normal
category: feature
links:
- '[Docker: use bind mounts](https://docs.docker.com/storage/bind-mounts/){documentation}'
---
# Bind Mounts
---

## Content

A bind mount is a mapping of a host file or directory to a container file or directory. Mounting a host directory/file into a container behaves like a local file path - the container is unaware this is coming from a host.

Unlike volumes which are completely managed by Docker, bind mounts are dependent on the directory structure of the host machine. This means that host files overwrite any files in the container.

Since bind mounts are host-specific, they cannot be part of a Dockerfile and have to be used at run-time with `docker container run`:

Similarly to volumes, a bind mount is created with the `-v` flag, but with bind-mounts we pass in a full path instead of a name.

```bash
docker container run \
  -v ~/enki/local_path:/path/container mysql
```

---
## Practice

A bind mount is ???.

* a file or directory on the host machine directly mounted onto a file path within a container
* a hard-drive on the host machine that is virtually mounted into a container
* an IP address and a port bound from the host machine to the container
* an ftp connection mounted onto a file path within a container

---
## Revision

Create a bind-mount when launching a container from the local path `~/local/data` to the path `/data` within the container:

```bash
docker container run \
  ??? ???:??? nginx
```

* -v
* ~/local/data
* /data
* -b
* --bind
