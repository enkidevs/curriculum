---
author: tuwi.dc

levels:

  - basic

  - medium

type: normal

category: how to

tags:

  - linux

  - wget

  - rate

  - limit

  - terminal

  - download




---

# Limit the `wget` download rate

---
## Content

You can limit the download rate of the `wget` command to avoid band saturation.


```
$ wget --limit-rate 128k 
                http://server/file.iso
```

`--limit-rate` enables this, and should be followed by the rate limit plus `k` for kilobytes or `m` for megabytes.

---
## Revision

Limit the download rate for `file.iso`  to 1MB:
```
$ ??? ??? ??? 
      http://server.com/file.iso
```

* `wget`
* `—limit-rate`
* `1m`
* `1MB`
* `-L`
* `ds`

 
