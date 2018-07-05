---
author: tuwi.dc

levels:

  - advanced

  - medium

type: normal

category: how to

tags:

  - software

  - apt-get

  - ppa

  - repository

  - terminal

  - server

  - ubuntu




---

# Using `PPAs`

---
## Content

PPAs[1] are repositories that have additional/custom builds/packages on them. They are, in general, non-standard software or updates.

A clear example would be like installing the latest `node.js` build or installing `docker`. 

On the command line you can add a PPA using the `add-apt-repository` utility, e.g.:
```
$ add-apt-repository ppa:gwibber-daily/ppa
```

If you get an error that the add-apt-repository command could not be found, on Ubuntu 12.04 and earlier, install the python-software-properties package:
```
$ apt-get install
   python-software-properties
```
On Ubuntu 14.04 and later:
```
$ apt-get install 
  software-properties-common
```
You can remove a ppa by doing
```
$ ppa-purge ppa:<lp-name>/<ppa-name>
```

---
## Revision

`PPA's`  are not recommended if 

???.

* you want a stable build
* you want to test new features 
* applications are not working

---
## Footnotes
[1:Acronym]
Personal Package Archive
 
