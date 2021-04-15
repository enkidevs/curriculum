---
author: nem035
type: normal
category: must-know
links:
  - "[What is Docker Engine?](https://docs.docker.com/engine/){documentation}"
  - "[Installing Docker](https://docs.docker.com/install/){documentation}"
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Docker Engine

---

## Content

Docker uses a client-server architecture consisting of 2 parts.

1. The Docker daemon[1] (`dockerd`), which listens for requests through the Docker REST API[2] and manages **Docker Objects** such as _containers_, _images_, _networks_, and _volumes_.

2. The Docker client (`docker`), which is a front-facing CLI[3] tool that users primarily interact with. It sends all commands to `dockerd` via the Docker REST API to do the heavy-lifting.

![docker-architecture](https://img.enkipro.com/d54b4692a3f12ffb152532dd03744c8b.png)

The main parts of Docker that we interact with on a daily basis are **Docker Objects** such as _images_, _containers_, _networks_, _volumes_, _plugins_, etc.

Any Docker _container_ can run on any server that has the Docker daemon installed, regardless of the underlying operating system.

Once we get our application working with Docker, we can deploy it anywhere.

---

## Practice

The Docker daemon and Docker CLI use ??? to communicate.

- REST API
- SOAP API
- channels
- Objects

---

## Revision

The two main parts of the Docker architecture are the ???

- CLI and daemon
- daemon and container
- Object and namespaces
- Container and Hub

---

## Footnotes

[1: daemon]
A daemon is a computer program that runs in the background (outside of direct user control) and performs a specified operation at predefined times or in response to certain events.

It is usually used for performing automated, administrative tasks for the operating system or an application. For example, `syslogd` is the daemon that implements the system logging facility on Linux, and `sshd` is a daemon that serves incoming SSH connections.

Traditionally, the name of a daemon process ends with the letter `d`, to make it more distinguishable from other processes.

[2: REST API]
The REST stands for **RE\***presentational **S**tate **T**ransfer\* and API stands for **A\***pplication **P**rogramming **I**nterface\*.

REST is a set of rules on how two or more systems connected on a network should talk to each other.
An API is a software intermediary that allows two applications to talk to each other.

A REST API is a de-facto communication standard modern software applications on the web.

[3: CLI]
A command-line interface (**CLI**) processes commands to a computer program in the form of lines of text.
