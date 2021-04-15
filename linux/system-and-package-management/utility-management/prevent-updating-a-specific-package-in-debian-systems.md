---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - apt
  - package
  - update
  - aptitude
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Prevent updating a specific package in Debian systems


---

## Content

There are several ways of holding back a package (thus preventing it from update).

Here is how we do it using apt/aptitude.

**Using `apt`**

You can hold a package using:

```bash
sudo apt-mark hold package_name
```

and remove the hold with:

```bash
sudo apt-mark un-hold package_name
```

**Using `aptitude`**

You can hold a package using:

```bash
sudo aptitude hold package_name
```

and remove the hold with:

```bash
sudo aptitude unhold package_name
```


---

## Revision

Using `aptitude`, prevent the `enki` package from updating:

```bash
??? ??? enki
```

- aptitude
- hold
- apt-get
- stop
