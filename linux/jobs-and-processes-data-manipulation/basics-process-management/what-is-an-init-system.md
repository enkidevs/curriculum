---
author: jfarmer
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Is An "Init System"?


---

## Content

The last thing the kernel does in its initialization process is start the "init system", typically by running the `/sbin/init` command.  There are many different init systems, but they all have similar responsibilities:

1. Control which services get started on boot.
2. Provide tools for starting services, stopping services, and giving overall information about service status.
3. Provide a framework for writing new services.

Here "service" includes everything from a web server to the system-level servers used to manage logging in.  Fundamentally, an init system's job is to get all the user-facing (i.e., non-kernel) programs and services running.

The specific commands and tools involved in (1)-(3) vary from init system to init system.  Historically, the most common init system was called "System V Init", named after the influential UNIX System V.  More recently on Linux, the *systemd init system* has become more common owing to its adoption by influential Linux distributions like CentOS, RedHat, Debian, Ubuntu, and others.

There are therefore two things to keep in mind when reading about the Linux init system:

1. Different distributions can use different init systems
2. Different versions of the *same* distribution can use different init systems

For example, systemd became the default init system on Ubuntu in v15.04 (released in 2015).


---

## Practice

Which of the following summarizes the best feature of an `init system`? 

???

- It gets all the non-kernel programs and services running.
- It gets all the kernel services running.
- It initializes the user interface.
- It checks for kernel errors.


---

## Revision

What is the most commonly used `init system` for Linux distributions? 

???

- systemd
- system V init
- gentoo
- launchd
