---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - find

  - bash

  - linux

  - regex



notes: ''

---

# Finding file with regexes

---
## Content

The `find` command supports regular expressions. Using them can save you the extra step of piping search results to `grep`.  

For instance:

```
find -type f -regex ".*/A[^/]+\.sh$"
```

translates to "find any files that starts with A and ends with a sh extension".

---
## Practice

Find files that have a title containing `script` as a substring and ending in `.py` :
```
$ ??? ??? ??? 
         ??? '.*script.*\.py'
``` 

* `find`
* `-type`
* `f`
* `-regex`
* `file`
* `-f`
* `fnd`

---
## Revision

Searching for a file using regular expressions can be done by the 

??? command .


* `find`
* `search`
* `lf`

 
