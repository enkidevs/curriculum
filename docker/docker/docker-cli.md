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
  devops.identify-docker.0: 10
  devops.identify-docker.1: 10

links:

- '[link to official documentation](https://enki.com)'
- '[link to deeper dive blog post](https://enki.com)'
- '[link to a video](https://enki.com)'
- '[link to a discussion](https://enki.com)'
---
# Docker CLI
---
## Content

Docker comes with a command-line interface (CLI) that uses the Docker REST API to control or interact with the Docker daemon. This gives us a fine-grain control to manipulate containers, images, networks, services and other Docker Objects.

Most Docker CLI commands have 3 parts.

They start with `docker`, followed by a subcommand which is usually a name of a Docker Object such as `image`, then followed by a command.

For example, to list all containers, we can do:

```bash
❯ docker container ls
```

Likewise, to remove the `nginx` image, we can do:

```bash
❯ docker image rm nginx
```

In fact, `docker` has many commands that are generic across Docker Objects (containers, images, etc.) and can be applied to any of them.

```bash
# list all objects
❯ docker OBJECT ls

# remove object
❯ docker OBJECT rm ID_OR_NAME

# inspect an object (return a JSON metadata describing it)
❯ docker OBJECT inspect

# remove unused objects
❯ docker OBJECT prune
```

To list available commands and other helpful information for `docker` itself or any of it's sub commands like `docker container`, we can suffix the command we want to examine with `--help`.

```
❯ docker attach --help
Usage:  docker attach [OPTIONS] CONTAINER

Attach local standard input, output, and error streams to a running container

Options:
      --detach-keys string   Override the key sequence for detaching a container
      --help                 Print usage
      --no-stdin             Do not attach STDIN
      --sig-proxy            Proxy all received signals to the process (default true)
```

Docker CLI (and Docker in general) has a concept of "_batteries included but removable_".

This essentially means that the default configurations in Docker are setup to be easy to use and solve the most common problems but that we can change most of the options under the hood. Defaults work well in many cases, but it's easy to overwrite them when needed.

---
## Practice

To inspect a Docker `nginx` image, we'd run the command:
???

* `docker image inspect nginx`
* `docker inspect image nginx`
* `docker image nginx inspect`
* `docker inspect nginx image`

---
## Revision

To fetch the logs for a Docker container named `webserver`, we'd run:

???

* `docker container logs webserver`
* `docker logs container webserver`
* `docker show logs webserver`
* `docker container-logs`
