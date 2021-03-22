---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - downgrade
  - apt-get
  - package
  - terminal
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Downgrade a package via `apt-get`


---

## Content

You can downgrade a package via apt-get.
If you have the version number, or the target release, apt-get allows you to make a selection. 

Use either:

```bash
apt-get install <pkg-name>=<pkg-version>
# apt-get install firefox='45.0.*'
Selected version '45.0.2+build1-0ubuntu1'
...
The following packages will be DOWNGRADED:
          firefox
```

Or:

```bash
apt-get -t=<release> install <pkg-name>
```

You can list all available versions with:

```bash
apt-cache showpkg <package-name> 
```

In addition, you can 'hold' a package at the current version and prevent automatic updates using:

```bash
apt-mark hold <package-name> 
```


---

## Revision

You can downgrade a package on Debian systems using:

```bash
??? install 
      ???=???
```

- `apt-get`
- `package_name`
- `desired_package_version`
- `apt-mark`
- `current_packate_version`
