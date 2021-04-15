---
author: nickdaminov
type: normal
category: must-know
links:
  - '[More on APT](https://en.wikipedia.org/wiki/APT_(Debian)){website}'
  - '[More on PPAs](https://launchpad.net/ubuntu/+ppas){website}'
  - >-
    [PPAs with
    GUI](https://askubuntu.com/questions/4983/what-are-ppas-and-how-do-i-use-them){website}
  - '[Launchpad](https://launchpad.net/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# What is a PPA?


---

## Content

**PPA**s, or *Personal Package Archives*, is a software repository for *APT*[1] packages, hosted on `launchpad.net` servers[2]. *PPAs* are used for distributing software written or maintained by a private group or individual (anyone can publish).

Packages from those *PPA*s can be downloaded both through a *shell* and a *GUI interface*. As they can be written by anyone in the community, there are a few points to consider:

- Who created the PPA
- How many user have downloaded and used it
- How up to date it is (what OS version it runs on)

In order to list all the installed **PPAs** run the following on the shell:

```bash
grep ^ /etc/apt/sources.list.d/*
```


---

## Practice

What is a PPA?

???

- A repository
- A package
- A piece of software
- A type of shell


---

## Revision

What is a PPA?

???

- A repository
- A package
- A piece of software
- A type of shell


---

## Footnotes

[1: APT]
Advanced Packaging Tool

[2: Launchpad]
Launchpad is a software collaboration platform that provides various features for application development, as well as hosting Ubuntu packages and providing the PPA repository.
