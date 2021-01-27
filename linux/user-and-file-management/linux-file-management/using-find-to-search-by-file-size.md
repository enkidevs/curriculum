---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - '[ls manual page](https://man7.org/linux/man-pages/man1/ls.1.html){website}'
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Using `find` To Search By File Size


---

## Content

The `find` command is used to search for files on your computer.  It's often useful to search for files by file size, e.g., if you want to find potentially large files to delete.

This will find all files at least 100MB or larger in the current directory:

```shell
find . -type f -size +100M
```

The `+` in `+100M` signifies "at least 100MB".  If instead we used `-size 100MB`, `find` would only match files which are 100MB large (rounded to the nearest MB).

The output of this command will be a simple list of filenames without any size information.

To include more useful information you can run the following:

```shell
find . -size +100M
  -exec ls -lh {} \;
```

> 💡 The `ls` command is used to list information about the files (in the current directory by default). Check the *Learn More* section for more information.

The `-exec` option tells `find` to execute a particular command for each result, replacing `{}` with the name of the file.

The `\;` here means that the `ls -lh` command will be run **separately** for each of the found files[1].

In this case, we'll call `ls -lh` for each file we find.

For `ls`, the `-l` option produces output that includes file size, file permissions, and other details.

The `-h` option tells `ls` to output the file sizes in a human-friendly format, i.e., `550M` for 550MB instead of `576716800` for 576716800 bytes.

> 💡 You can use *any* command with `-exec`, not just `ls`.


---

## Revision

Find all the files (in the current directory) of at least 1GB in size :

```bash
??? ??? ??? f 
  ??? ??? 
```

- `find`
- `.`
- `-type`
- `-size`
- `+1G`
- `+1GB`
- `sudo`


---

## Footnotes

[1: exec]

So, in this example:

```shell
find . -size +100M
  -exec ls -lh {} \;
```

Because we used `\;`, for **every file found**, this is what happens:

- replace `{}` with the file's name
- run the `ls -lh` command

In this case, the command (`ls -lh`) will be run for the same number of found files.

You could also use `\+`, which appends all the found file names inside `{}`. Then, it calls `ls -lh` **for all the files** inside `{}`.

In this case, the command (`ls -lh`) will have a total number of invocations less than the number of found files.

You can read more about this in the [`find`'s manual page](https://man7.org/linux/man-pages/man1/find.1.html#EXPRESSION). You'll find the information regarding `exec` under the `ACTIONS` headline.
