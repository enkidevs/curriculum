---
author: tuwi.dc

levels:

  - medium

type: normal

category: feature

tags:

  - watch

  - linux

  - bash

  - terminal

  - connections



notes: ''

---

# Repeating commands with `watch`

---
## Content

Using **watch** allows us to run a command repeatedly, at specified time intervals.
The default is two-second intervals, but this may be changed with the `-n` option.

For example, to check memory usage in megabytes(`-m`) every 5 seconds you could run:
```
$ watch -n 5 free -m
```

To get the list of IPs and ports that are connected via https on your webserver every second: 
```
  $ watch -n 1 'netstat -an | grep ":443"'
```
To get the total number of connections on port 80 every second: 
```
$ watch -n 1 'netstat -an | 
    grep ":80" | wc -l'
 
```

---
## Practice

Write "5" to standard output every 2 seconds:
```
$ ??? ??? ??? ???
```

* `watch`
* `-n`
* `2`
* `"echo 5"`
* `"print 5"`
* `-m`
* `5`

---
## Revision

??? 

allows you to run a command repeatedly at specified time intervals.

* `watch` 
* `time` 
* `timer` 
* `repeat`

 
