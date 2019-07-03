---
author: jfarmer

levels:

  - basic

  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction

  - workout




aspects:
  - introduction
  - workout


---

# Using `find` To Search By File Size

---
## Content

The `find` command is used to search for files on your computer.  It's often useful to search for files by file size, e.g., if you want to find potentially large files to delete.

This will find all files at least 100MB or larger in the current directory:

```shell
$ find . -type f -size +100M
```

The `+` in `+100M` signifies "at least 100MB".  If instead we used `-size 100MB`, `find` would only match files which are 100MB large (rounded to the nearest MB).

The output of this command will be a simple list of filenames without any size information.  To include more useful information you can run the following:

```shell
$ find . -size +100M
     -exec ls -lh {} \;
```

The `-exec` option tells `find` to execute a particular command for each result, replacing `{}` with the name of the file.  The `\;` denotes the end of the command to be executed.

In this case, we'll call `ls -lh` for each file we find.  For `ls`, the `-l` option produces output that includes file size, file permissions, and other details.  The `-h` option tells `ls` to output the file sizes in a human-friendly format, i.e., `550M` for 550MB instead of `576716800` for 576716800 bytes.

**Note**: you can use *any* command with `-exec`, not just `ls`.

---
## Revision

Find all the files of at least 1GB in size :
```
$ ??? ??? ??? f 
         ??? ??? 
```

* `find`
* `.`
* `-type`
* `-size`
* `+1G`
* `+1GB`
* `sudo`

 
