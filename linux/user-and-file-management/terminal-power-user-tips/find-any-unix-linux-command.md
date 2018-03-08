# Find any Unix / Linux command
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:
  - linux
  - apropos
  - search
  - command
  - terminal
  - find
  - ''
  - workout


---
## Content

It's possible to perform keyword searches under linux using the `apropos` command.

Each manual page has a short description available within it and `apropos` searches the descriptions for instances of the keyword.

How to search all the user related administrative commands:
```
$ apropos "user*"
```
Outputs:
```
addgroup - add a user/group to the system
adduser  - add a user/group to the system
...
```

---
## Practice

Complete the following snippet to obtain the output :
```
$ ??? ???
...
foomatic-kitload (8) - installs a data kit
          into the foomatic database.
grub-install (8) - install GRUB to a device
install-docs (8) - manage online
          Debian documentation
install-sgmlcatalog (8) - maintain
        transitional SGML catalog
 ...
```
*`apropos`
*`"install*"`
*`"to"`
*`"user"`
*`apropo`

---
## Revision

`apropos`  allows you to search through

??? .

*commands’ description
*users
*servers
