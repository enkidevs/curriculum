---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - ubuntu
  - systemd
  - hostname
  - hosts
  - change
links:
  - >-
    [www.freedesktop.org](https://www.freedesktop.org/software/systemd/man/hostnamectl.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Change your `hostname` on systems using `systemd`


---

## Content

The `hostnamectl` command is part of the `systemd-services` package.

`hostnamectl` combines setting the `hostname` via the hostname command and updating the `/etc/hostname`. 

As well as setting the static hostname, it can set the "pretty" hostname[1], which is not used in Ubuntu. 

```bash
hostnamectl set-hostname 
                    new_hostname
```

You should also update the `/etc/hosts` file and change the line which reads:

```plain-text
127.0.0.1     old-hostname
```

This takes effect immediately without having to reboot.


---

## Practice

What command should be run to set the new hostname using the  `systemd-services` package?

```bash
??? ??? new_hostname
```

- `hostnamectl`
- `set-hostname`
- `hostnamemd`
- `set_hostname`


---

## Revision

Even if you use `hostnamectl` to change the hostname, you should manually edit the 

??? file.

- `/etc/hosts`
- `/etc/hostname`
- `/etc/hostnamectl`


---

## Footnotes

[1:Pretty Hostname]
The pretty hostname is a free-form UTF8 host name for presentation to the user. (e.g. *Charlie's Laptop*)
