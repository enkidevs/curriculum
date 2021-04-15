---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Does `PATH` Do?


---

## Content

Let's say you type a command like `echo` in the terminal.  How does `bash` know which program to execute?

`bash` tries to find the `echo` command by looking through the list of directories in `PATH`, one by one until it finds an executable named `echo`.  

> 💡 Executable programs are usually stored in a `bin` directory.

Assuming the contents of `PATH` are:

```bash
echo $PATH
# /usr/local/bin:/usr/bin:/bin
```

> 💡 Each path in `PATH` is separated by a `:`

Internally, when you type `echo` and hit enter, `bash` does the following:

- Is `/usr/local/bin/echo` a valid executable?  If yes, run it.
- If no, is `/usr/bin/echo` a valid executable?  If yes, run it.
- If no, is `/bin/echo` a valid executable?  If yes, run it.

> 💡 The `echo` executable is located in `/bin/echo`.

If `bash` reaches the end of the list without finding a valid executable it will display a `command not found` error.

> 💡 If you're ever dealing with unexpected `command not found` errors then your first thought should be "Is there something wrong with my `PATH` environment variable?"


---

## Practice

If the `PATH` variable looks like this:

```bash
echo $PATH
# /usr/bin:/bin:/local/binaries
```

In what order will the shell visit the folders in `PATH` to find a valid executable for `somecommand`?
```bash
???

???

???
```

- /usr/bin
- /bin
- /local/binaries
- /bin/local/binaries
- somecommand


---

## Revision

The `command not found` error is thrown if the executable couldn’t be found ???.

- in the list of folders contained in the PATH variable
- anywhere on the system
- in the local folder
- in the list of folders contained in the EXE variable


---

## Quiz

### Do you know how the $PATH variable is evaluated?


Suppose your $PATH value is:

```bash
echo $PATH
# /bin:/usr/bin:~/Desktop/rm-ext:~/atom
```

What is the next directory the shell will look
for an executable if no match was found in `/bin`?

???

- /usr/bin
- none, as /bin is already the last one
- ~/atom
- ~/Desktop/rm-ext
