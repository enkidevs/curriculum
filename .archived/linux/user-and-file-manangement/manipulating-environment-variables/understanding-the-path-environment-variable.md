---
author: jfarmer

levels:

  - basic

  - beginner

aspects:
  - introduction
  - workout

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction



---

# Understanding The `PATH` Environment Variable

---
## Content

Understanding the `PATH` environment variable and how to manipulate it is one of the most important things a beginner can master.  The contents of `PATH` tell your shell where to look for executables.  It is therefore central to understanding what happens when you type a command at the command prompt.

### What Does The `PATH` Variable Contain?

The `PATH` variable itself contains a `:`-delimited list of directories.

See for yourself:

```shell
echo $PATH
/usr/local/bin:/usr/bin:/bin
```

**Note**: the fact that `:`'s are used to delimit the directories here is a matter of *convention*.  Other parts of the system assume the list is `:`-delimited, but if in the 1970s we had settled on `,` or `;` instead, we would still be using that today.

### What Does The `PATH` Variable Do?

Let's say you type a command like `ls` at the command prompt.  How does `bash` know which program to execute?

`bash` tries to find the `ls` command by looking through the list of directories in `PATH` one by one until it finds an executable named `ls`.  In the case of `ls`, the actual executable is located in `/bin/ls`.

Internally, when you type `ls` and hit enter, `bash` does the following (assuming the contents of `PATH` are as above):

- Is `/usr/local/bin/ls` a valid executable?  If yes, run it.
- If no, is `/local/bin/ls` a valid executable?  If yes, run it.
- If no, is `/bin/ls` a valid executable?  If yes, run it.

Here, `bash` will continue down the list until it finds `/bin/ls` and then execute that.  If `bash` reaches the end of the list without finding a valid executable it will display a `command not found` error.

If you're ever dealing with unexpected `command not found` errors then your first thought should be "Is there something wrong with my `PATH` environment variable?"

---
## Practice

If the `PATH` variable looks like this:
```
echo $PATH
/usr/bin:/bin:/local/binaries
```
In what order will the shell visit the folders in `PATH` to find a valid executable for `somecommand`?

???

???

???

* /usr/bin
* /bin
* /local/binaries
* /bin/local/binaries
* somecommand

---
## Revision

The `command not found` error is thrown if the executable couldn’t be found

???

* in the list of folders contained in the PATH variable.
* anywhere on the system.
* in the local folder.
* in the list of folders contained in the EXE variable.

---
## Quiz 
### Do you know how the $PATH variable is evaluated?

Suppose your $PATH value is:

```bash
echo $PATH
/bin:/usr/bin:~/Desktop/rm-ext:~/atom
```
What is the next directory the shell will look
for an executable if no match was found in `/bin`?


 ???

* /usr/bin
* none, as /bin is already the last one
* ~/atom
* ~/Desktop/rm-ext
 
 
 
