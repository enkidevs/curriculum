---
author: nene

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

tags:

  - files

  - workout


links:

  - '[linux.die.net](http://linux.die.net/man/1/fuser){website}'


aspects:
  - workout


---

# Find the unknown process preventing deleting of files

---
## Content

Sometimes when deleting a file, the error "File is already in use" is encountered, with further trouble locating the process using the file.

To find any processes using the file you can use `fuser` command : 

```
fuser -k filename
```

The command above will search for the file  and kill whatever processes are using it.

---
## Revision

Complete the command to kill the processes that are using a file :
```
$ ??? ??? file_name
```

* `fuser`
* `-k`
* `-v`
* `kill`

 
