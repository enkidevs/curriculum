---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - dpkg
  - package
  - debian
  - terminal
  - bash
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

# Check the version of a package on a Debian based system


---

## Content

You can check the version of a package installed in a deb based system with the `dpkg` command:

```bash
dpkg --list <package>
```

```bash
dpkg --list python
    Name      Version        Description
ii  python    2.7.3-0ubuntu2 interact..
```

The first column represents the *status* of the package. It is made up of 3 characters, the third one being used in case of an error.

The first one refers to the *desired* state of the package, or how is supposed to be. In this case, `i` means the package is marked for installation. Other options are:

```plain-text
u: Unknown
r: Remove
p: Purge
h: Hold
```

The second character stands for its actual status: the package is installed because it reads an `i`. Other posibilities are:

```plain-text
n: Not-installed
c: Conf-files are present
u: Unpacked
f: Fail-conf(conf removal failed)
h: Half-installed
w: trig-aWait from another package
t: Trig-pend (has beed triggered)
```

The only option for third character is `r` and means it needs reinstallation (reinst-required).


---

## Practice

A status code of `uf` stands for 

???.

- unknown desired state and removal of the config files failed state
- unmount desired state and removal of the config files failed state
- unknown desired state and half installed state
- installed desired state and unknown state


---

## Revision

You can check the status of installed packages on a Debian system by issuing:

```bash
??? ??? ???
```

- `dpkg`
- `—list`
- `Package_name`
- `installed`
- `apt-get`
- `list`
