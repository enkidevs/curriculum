---
author: tuwi.dc

levels:

  - basic

  - beginner

type: normal

category: must-know

tags:

  - linux

  - debian

  - deb

  - install

  - dpkg

  - install

  - remove

  - terminal




---

# Installing a `.deb` package from the terminal

---
## Content

To install a `deb` package:
```
$ sudo dpkg -i DEB_PACKAGE
# ex: sudo dpkg -i debpack_3.1.deb
```
If `dpkg` reports an error due to dependency problems, run: 
```
$ sudo apt-get install -f
```
This will download the missing dependencies. If that reports an error, dependencies will have to be configured manually.

To remove the package:

```
$ sudo dpkg -r PACKAGE_NAME
# ex: sudo dpkg -r debpack
```

---
## Practice

The missing dependencies error thrown by `dpkg` can be fixed by:
```
$ ??? ??? ??? 
```

* `apt-get`
* `install` 
* `-f`
* `dpkg`
* `update`

---
## Revision

The usual syntax for installing a `deb` package is:
```
$ ??? ??? ???
```

* `dpkg`
* `-i`
* `Deb_package_name`
* `install`
* `apt-get`

 
