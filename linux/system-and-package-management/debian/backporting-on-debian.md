---
author: tuwidc
type: normal
category: feature
tags:
  - backporting
  - linux
  - debian
  - terminal
  - apt-get
  - aptitude
  - upgrades
links:
  - '[backports.debian.org](http://backports.debian.org/Instructions/){website}'
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Backporting on Debian


---

## Content

Backports are recompiled packages, taken from the next Debian releases (from *testing* and sometimes from *unstable*, when it comes to security updates) installed on a *stable* environment.

Backporting should be used with care, as upgrading packages you don't understand can have unintended effects on your system.

Therefore, selecting single required backported packages is recommended over using all available backports.

To use this feature in `wheezy`, add this line in `sources.list`[1]:

```plain-text
deb http://http.debian.net/debian \
  wheezy-backports main
```

Then, update the package list:

```bash
apt-get update
```

Install a package from the backport using:

```bash
apt-get -t jessie-backports
                   install "package"
```

Or:

```bash
aptitude -t jessie-backports 
                   install "package"
```

The `-t` (`--target-release`) specifies *jessie-backports* as target release.


---

## Revision

`Backports` are recompiled packages taken from ???

- next releases of the OS
- older releases of the OS
- other OS


---

## Footnotes

[1:Syntax]
`deb` indicates that the archive contains binary packages, next is the repository URL. The *distribution* can be either the release code name(i.e. wheezy-backports) or release class(stable,testing). `main` is a *component* and consists of *DFSG*(Debian Free Software Guidelines)-compilant packages, which are considered being part of the Debian distribution.
