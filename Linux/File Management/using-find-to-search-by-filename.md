# Using `find` To Search By Filename
author: jfarmer

levels:

  - basic

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[www.tecmint.com](http://www.tecmint.com/35-practical-examples-of-linux-find-command/){website}'

---
## Content

The `find` command is used to search for files on your computer.  One of the most common uses is to search for a files based on their filename, although it can do much more than that.

Here's a quick example that will print out the names of every mp3 file in the current directory:

```console
$ find . -name "*.mp3"
./music/Some Album/Cool Song 1.mp3
./music/Some Album/Cool Song 2.mp3
./music/Another Album/Best Song.mp3
... (potentially many more lines) ...
$
```

Recall that `.` is short-hand for "the current directory".  You can replace `.` with any directory name and `find` will start its search there.

The `-name` option tells `find` to search based on filename and requires a pattern to match against.  In this case `"*.mp3"` matches any file that ends in .mp3.

### Restricting File type

Sometimes you only want to search for files and not directories, or vice versa.  The `-type` option allows us to specify whether to search for only files or only directories.

This will find all files (but not directories) whose name contains the string "user":

```console
$ find . -type f -name "*user*"
```

If we instead wanted to find only directories, we would pass `-type d` to `find`.

Thus, in the first example, it's slightly more correct to search for mp3 files with the following, since it's possible (though unlikely) for a directory to end with ".mp3"s:

```console
$ find . -type f -name "*.mp3"
```

---
## Practice

Search in the home directory for files that contain happy in their title:
```
$ ??? ??? -type 
        ??? ??? ???
```
*`find`
*`~/`
*`f`
*`-name`
*`"*happy*"`
*`"happy"`
*`d`

---
## Revision

To look for directories with `find` you need 

??? flag.

*-type d
*-type f
*dir
*-dir
