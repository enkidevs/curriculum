---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Appending Output With `>>`


---

## Content

Using `>` to redirect the output of a command to a file will cause the entire contents of the file to be overwritten.  Consider this example, which will write the directory contents of your home directory to a file named `homedir_contents.txt`:

```shell
ls -l ~ > homedir_contents.txt
```

If `homedir_contents.txt` already exists then the `>` redirection will overwrite its contents.

In some cases, we want to append any output to the contents of an existing file rather than overwrite it.  We can use the `>>` redirection to do this instead.

Consider the following extended example (`cat` will print the contents of a file to standard out):

```shell
cat file1.txt
cat: file1.txt: No such file or directory
echo "Apple" > file1.txt
cat file1.txt
Apple
echo "Banana" > file1.txt
cat file1.txt
Banana
cat file2.txt
cat: file2.txt: No such file or directory
echo "Apple" > file2.txt
cat file2.txt
Apple
echo "Banana" >> file2.txt
cat file2.txt
Apple
Banana
```

As you can see, the contents of `file1.txt` are overwritten when we use `>`, whereas we append new content `file2.txt` without overwriting anything when we use `>>`.

Note that for appending purposes the use of the `cat` command is recommended.


---

## Revision

`>` ???, whereas `>>`  ??? .

- writes the stdout to a file, overwriting its content
- appends stdout stream to a file
- creates a new folder
- deletes a file
