# Retrieve previous arguments
author: catalin

levels:

  - basic

  - medium

  - beginner

type: normal

category: tip

tags:
  - workout
---
## Content

If you want the last argument only, use `!$` syntax:
```
$ mkdir /documents/enki
$ cd !$
cd /documents/enki
``` 

In case you need more than 1 argument, use:
```
$ cat chapter1.txt chapter2.txt
 ...
$ ls !:1-2
ls chapter1.txt chapter2.txt

$ ls !:2
ls chapter2.txt
```
If you are looking for an argument that was used before the last command, press **Alt + .** (as in hold Alt and press period) . Pressing it multiple times will cycle through past arguments:
```
$ mkdir /documents/enki
$ cat chapter1.txt

$ ls 
# Alt + .
$ ls chapter1.txt
# Alt + .
$ ls /documents/enki
```

---
## Practice

Which argument will be retrieved after pressing *Alt + .* **twice**?
```
$ cd /documents/enki
$ cat chapter1.txt chapter2.txt

$ rm ???
```
*`/documents/enki`
*`chapter2.txt`
*`chapter1.txt`
*`chapter1.txt chapter2.txt`

---
## Revision

You can use ??? syntax to repeat the last command's argument.

*!$
*!!
*!1