# Duplicate pipe content with `tee`
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to

links:

  - '[en.wikipedia.org](https://en.wikipedia.org/wiki/Tee_(command)){website}'

tags:
  - workout
---
## Content

To duplicate the content while piping you can use the `tee` utility. 

One straightforward and useful example is that `tee` can be used to write to multiple files at the same time.

The command to achieve this is:
```
$ ps | tee fileone filetwo filethree
```

The output of the `ps` command is now inside three different files.

To append data to files, the `-a` flag must be used:
```
$ ps | tee -a fileone filetwo 
              filethree
```

---
## Practice

Print the output of `ls` command in two files:
```
$ ??? ??? ??? fileone filetwo
```
* `ls`
* `|`
* `tee`
* `ps`
* `pipe`
* `>>`
* `>`
* `<`

---
## Revision

Print the output of `ls` command in two files:
```
$ ??? ??? ??? fileone filetwo
```
* `ls`
* `|`
* `tee`
* `ps`
* `pipe`
* `>>`
* `>`
* `<`