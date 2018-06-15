---
author: tuwi.dc

levels:

  - basic

  - beginner

type: normal

category: must-know

tags:

  - linux

  - du

  - command

  - terminal

  - size



notes: ''

---

# Practical `du` command

---
## Content

The Linux `du` (disk usage) provides information on disk usage of files and directories.
```
tuwid@valhalla:~$ du tmp/
16	tmp/npm.npmjs.org/net-ping/
...
520	tmp/npm-17349-xo9lASR4
56023  tmp/
```
The `-h` flag will display the result in human readable format, with sizes expressed in Bytes, Kilobytes, Megabytes... 
```
tuwid@valhalla:~$ du -sh tmp/
55K	tmp/
```
The `-a` flag will display the disk usage for all the files and directories.

```
tuwid@valhalla:~$ du -ah tmp/
12K	tmp/npm.npmjs.org/net-ping-1.1.11.tgz
...
52K	tmp/npm-17349-xo9lASR4
55K	tmp/
```

To find the largest 3 files in a directory:
```
$ du -h dir | sort -rh | head -3
```

---
## Practice

Find out the sizes expressed in easily  readable format of all items on your Desktop:
```
$ ??? ??? ???
``` 

* `du`
* `-ha`
* `~/Desktop/`
* `-a`
* `-hs`
* `-hvs`

---
## Revision

The `du` command stands for 

??? . 


* disk usage
* disk utility
* document usage
* memory usage

 
