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

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---
# Bind Mounts
---

## Content

A sharing (mounting) a host directory/file into a container that just looks like a local file path - container is unaware this is coming from a host. Essentially, a bind mount is just a mapping of a host file or directory to a container file or directory. Unlike volumes which are completely managed by Docker, bind mounts are dependent on the directory structure of the host machine. This means that host files overwrite any files in the container. When we use a bind mount, a file or directory on the host machine is mounted into a container.

Since bind mounts are host-specific, they cannot be part of a Dockerfile and have to be used at run-time with `docker container run`:

Similarly to volumes, a bind mount is done with the `-v` flag but we pass in a full path instead of a name.

```bash
❯ docker container run -v /Users/enki/local_path:/path/container mysql
```

TEXT TO USE TO EXTRACT QUESTION:

> Bind mounts have limited functionality compared to volumes. When you use a bind mount, a file or directory on the host machine is mounted into a container. The file or directory is referenced by its full or relative path on the host machine. By contrast, when you use a volume, a new directory is created within Docker’s storage directory on the host machine, and Docker manages that directory’s contents.
