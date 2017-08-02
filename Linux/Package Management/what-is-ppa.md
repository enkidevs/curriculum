# What is PPA?
author: Nick Daminov

levels:

  - medium

type: normal

category: must-know

links:
  - '[More on APT](https://en.wikipedia.org/wiki/APT_(Debian))'
  - '[More on PPAs](https://launchpad.net/ubuntu/+ppas)'
  - '[PPAs with GUI](https://askubuntu.com/questions/4983/what-are-ppas-and-how-do-i-use-them)'
  - '[Launchpad](https://launchpad.net/)'

---
## Content

**PPA** is a *Personal Package Archive*, software repository for *APT*[1] packages (after downloading a PPA we can use APT to install desired software). **PPAs** are used for distributing software for *Linux* like systems via *launchpad.net*[2] which has certain advantages over other distribution methods.

**PPAs** can be downloaded both trough *shell* and *GUI interface*. It is important to remember that the software distributed via **PPA** can be written by anyone in the community so there are a few points to consider:
 - Who created the PPA
 - How many user have downloaded and used it
 - How up to date it is (what OS version it runs on)

In order to list all the installed **PPAs** run the following on the shell:
```
$ grep ^ /etc/apt/sources.list.d/*
```

---
## Practice

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Revision

What does the fox says?
???

* right answer
* wrong answer
* wrong answer 2

---
## Footnotes

[1: APT]
Advanced Packaging Tool

[2: Launchpad]
Launchpad is a software collaboration platform that provides various features for application development as well as hosts Ubuntu packages and provides PPAs.
