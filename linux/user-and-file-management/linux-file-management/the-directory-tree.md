---
author: jfarmer
type: normal
category: tip
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The Directory Tree


---

## Content

The Linux filesystem is laid out as a "directory tree".  There is a single root directory (denoted `/`), every other directory has a "parent" directory, and every file is contained in a single directory.

Here is a graphical representation:

```plain-text
/
 ├── bin
 ├── dev
 ├── usr
 │   ├── bin
 │   ├── lib
 │   ├── libexec
 │   ├── local
 │   ├── sbin
 │   ├── share
 |...
 |...
```

So `/` is a directory, `usr` is a directory whose parent is `/`, `lib` is a directory whose parent is `usr`, and so on.  These are denoted `/`, `/usr`, and `/usr/lib` respectively.

A path like `/usr/lib` is called an "absolute" path since the full path is specified, starting from the root directory.

### The Special `.` And `..` Subdirectories

Every directory has two special "virtual" subdirectories: `.` and `..`.  These are used to refer to directories in a relative or reflexive way.

The `.` directory always refers to "the current directory" and the `..` directory always refers to "the parent directory."

So, for example, `/usr/share/..` is a valid directory path and refers to the parent directory of `/usr/share`, i.e., the `/usr` directory.

`.` and `..` are most useful when navigating the filesystem from the command line.  For example, `cd ..` will cause the shell to change to the current directory's parent directory.


---

## Practice

In what directory will you be after issuing `cd .` ?

???

- In the same directory
- In the parent directory
- In the first child directory


---

## Revision

In what directory will you be after issuing `cd ..` ?

???

- In the parent directory
- In the same directory
- In the first child directory
