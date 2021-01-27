---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - dpkg
  - apt-get
  - package
  - version
  - debian
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Install specific version of packages


---

## Content

Often it's necessary to install a specific version of a package. To do so, a complete version of the package is required.

This will be displayed when we run:

```bash
# debian
apt-cache showpkg <package_name>
Package: firefox
Versions:
47.0+build3-0ubuntu0.16.04.1


# rpm
yum --showduplicates list
                    <package_name>
Available Packages   
firefox   46.0   fedora
firefox   47.0   updates
```

This will output different versions that our sources provide.

To install the specific version simply run:

```bash
# debian
apt-get install <package_name>=<version>
# rpm
yum install <package_name>-<version>
```

For example:

```bash
apt-get install firefox=46.0
```


---

## Revision

`apt-cache showpkg <package_name>`  would work on ??? systems.

- Debian
- RPM
- BSD
