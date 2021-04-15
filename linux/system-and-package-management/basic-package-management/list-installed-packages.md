---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - dpkg
  - package
  - debian
  - ubuntu
  - package list
  - installed
  - grep
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# List installed packages


---

## Content

We can get a list of all the installed packages on a Debian / Ubuntu server by issuing:

```bash
sudo dpkg --get-selections
```

On RPM systems:

```bash
yum list installed
```

On BSD systems:

```bash
pkg_version
```

It is good practice to save this file as it can be useful when migrating, so we pipe it into a file:

```bash
dpkg --get-selections > ~/package_list
 # yum list installed
 # pkg_version
```

To search for a specific package run:

```bash
dpkg --get-selections | grep <package>
yum list installed "package_name"
```


---

## Practice

It’s good practice to add the list of installed packages to a new file because 

???.

- it makes the recovery process easier
- it is easier to list them again
- it is easier to update them


---

## Revision

Match each OS with its command for listing installed packages:

```bash
# ???
dpkg --get-selections
# ???
rpm -qa 
# ???
pkg_version 
```

- `Debian`
- `RedHat/Fedora`
- `BSD`
