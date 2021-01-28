---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - apt-get
  - tasksel
  - terminal
  - server
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Using `Tasksel` for software installation


---

## Content

`Tasksel` is a software installation application that is an integral part of the Debian installer and works under Ubuntu Linux too. 

It groups some packages by tasks and offers the user an easy way to install the packages for that task. It provides the same functionality as using conventional meta-packages.

The option `--list-tasks` lists on screen the tasks (packages) that would be displayed in the `tasksel` text user interface.

```bash
sudo tasksel --list-tasks
```

The output:

```plain-text
u server	Basic Ubuntu server
u dns-server	DNS server
u edubuntu-server	Edubuntu server
i lamp-server	LAMP server
u mail-server	Mail server
i openssh-server	OpenSSH server
u postgresql-server	PostgreSQL database
...
...
u virt-host	Virtual Machine host
```

You can issue the `tasksel` command directly and check the services that you need to be installed, or use the caret (`^`)
with `apt-get`:

```bash
sudo apt-get install 
                openssh-server^
```


---

## Revision

To list all the packages that would be displayed in the `tasksel` UI, you would run:

```bash
??? ??? ??? 
```

- `sudo`
- `tasksel`
- `—list-tasks`
- `-lt`
- `taskel`
