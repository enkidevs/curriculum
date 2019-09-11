---
author: nem035
aspects:
  - introduction
  - workout
type: normal
category: must-know
links:
- '[Docker CLI](https://docs.docker.com/engine/reference/commandline/cli/){documentation}'

---

# Docker CLI

---
## Content

Docker comes with a command-line interface (CLI) that uses the Docker REST API to control or interact with the Docker daemon[1]. This gives us a fine-grain control to manipulate containers, images, networks, services and other Docker Objects.

Most Docker CLI commands consists of 3 parts.

They start with the command `docker`, followed by a subcommand which is usually a name of a Docker Object such as `image`, then followed by a command for an action to perform on that object.

```bash
docker <object> <action>
```

For example, to list all containers, we can do:

```bash
docker container ls
```

Likewise, to remove an image named `nginx`, we can do:

```bash
docker image rm nginx
```

In fact, `docker` has many commands that are generic across Docker Objects (containers, images, etc.) and can be applied to any of them.

```bash
# list all objects
docker <OBJECT> ls

# remove an object
docker <OBJECT> rm <ID_OR_NAME>

# return JSON metadata describing the object
docker <OBJECT> inspect <ID_OR_NAME>

# remove all unused objects
docker <OBJECT> prune
```

To list available commands and other helpful information for `docker` itself or any of its sub commands like `docker container`, we can suffix the command we want to examine with `--help`.

For example:

```bash
docker attach --help
```

would display:

```
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
* `docker webserver container-logs`

---
## Footnotes

[1: daemon]
A daemon is a computer program that runs in the background (outside of direct user control) and performs a specified operation at predefined times or in response to certain events. It is usually used for performing automated, administrative tasks for the operating system or an application. For example, `syslogd` is the daemon that implements the system logging facility on Linux, and `sshd` is a daemon that serves incoming SSH connections.
Traditionally, the name of a daemon process ends with the letter `d`, to make it more distinguishable from other processes.
