---
author: tuwi.dc

levels:

  - basic

  - beginner

type: normal

category: must-know

tags:

  - linux

  - grep

  - regex

  - intro



notes: ''

---

# Short intro to `grep`

---
## Content

The basic usage of the `grep` command is to search for a specific string in a specified file like:
```
$ grep "some_string" some_file
```

To search for `"require"` inside all the files with the `.js` extension in a dir, we issue it with a `*` as:

```
$ grep "require" *.js
```

The match is case-sensitive by default. Use the `-i` flag to make it case-insensitive: 

```
$ grep -i "http_access" squid.conf 
```

To do a recursive search (in current directory and all subdirectories) use the `-r` flag: 
```
$ grep -r "require" .
```

To get the match count, use the `-c` flag:
```
$ grep -c "session opened "
                       /var/log/auth.log
```

---
## Practice

What do each of the following flags represent?
```
#-i =???
#-r =???
#-c =???
#default =???
```

* `case-insensitive search`
* `recursive search in current directory`
* `count`
* `case-sensitive search`

---
## Revision

`grep` ??? the input file for lines containing a match to the given ???.


* searches 
* pattern
* string
* script
* copies
* deletes

 
