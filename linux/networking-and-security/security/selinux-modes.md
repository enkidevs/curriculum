---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: feature

---

# **SELinux**  modes

---
## Content

There is a default security mechanism provided in the kernel called **Security-Enhanced Linux**.

SELinux controls what processes, activities and users are allowed to access the system and limits the potential harm done by any of those if they are compromised.  

This compulsory access mechanism provides three basic modes that dictate how it affects the system:
- `enforcing` : enables *SELinux* policies on the system.
- `permissive` : limits *SELinux* actions to logging and warning, but disables all other policies.
- `disabled`

Check the current status of **SELinux**:

```bash
$ sestatus

$ getenforce

$ system-config-selinux
```

If it is `disabled` you can easily turn it on as it is recommended:

```bash
$ setenforce enforcing
```

---
## Practice

How do you change **SELinux** settings to only *warn* and *log* :
```
$ ??? ???
```


* `setenforce`
* `permissive`
* `getenforce`
* `enforcing`
* `warnings`
* `logging`
* `set-enforce`

---
## Revision

_SELinux_ is a

???

* kernel security module
* terminal browser
* Linux distribution
* hacker group
 
