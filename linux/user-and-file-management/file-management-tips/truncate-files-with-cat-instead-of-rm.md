---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

tags:

  - linux

  - terminal

  - truncate

  - files

  - null

  - rm

  - touch

  - workout



notes: ''

aspects:
  - workout


---

# Truncate files with `cat` instead of `rm`

---
## Content

Since `cat` enables us to preserve file ownership and permissions it is preferable to truncate files with:
```
$ cat /dev/null > file
#deletes the contents of the file
```

Rather than:

```
$ sudo rm file && touch file
#removes the file and creates
#a new one
```
`cat /dev/null` helps with *clearing log files* as well.

---
## Revision

Delete the *contents* of `old_log_file` :
```
$ ??? ??? > ???
```

* `cat`
* `/dev/null`
* `old_log_file`
* `touch`
* `rm`

 
