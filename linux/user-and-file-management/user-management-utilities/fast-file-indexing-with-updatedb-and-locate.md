---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

tags:

  - updatedb

  - mlocate

  - locate

  - find files

  - indexing filesystem

  - workout



notes: ''

aspects:
  - workout


---

# Fast file indexing with `updatedb` and `locate`

---
## Content

The `updatedb` command is used to index the files in your file system and `locate` is used to search for files efficiently, using this index.

Create the index with sudo:
```
$ sudo updatedb
```

Locate the file `squid.conf` using the index:
```
$ locate squid.conf 
``` 

To keep this database updated it is advisable to add a directive on the root's crontab.

First, issue:
```
$ crontab -e
```
and add this at the end:
```
0 5 * * * updatedb
```

The `updatedb` and `locate` commands are provided by the `mlocate` package. You can set up `mlocate` by using `apt-get` or `yum`.

In Debian based systems:
```
$ sudo apt-get install mlocate
```  
or Red-Hat based systems:
```
$ yum install mlocate
```

---
## Revision

??? 

pair, provided by the `mlocate` package, is used to search for files efficiently .


* updatedb/locate
* searchdb/locate
* search/locate
* indexdb/findb

 
