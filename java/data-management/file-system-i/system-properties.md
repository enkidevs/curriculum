---
author: nickdaminov
type: normal
category: must-know
links:
  - >-
    [More on System
    Properties](https://docs.oracle.com/javase/tutorial/essential/environment/sysprop.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# System Properties


---

## Content

Depending on the operating system you are working on (such as *Unix* or *Windows*), its system properties might differ from the others. To be sure your code will also work on other machines, Java's API provides some useful properties that automatically change to fit the running OS.

For example in *Linux Steam* folder has this path: `~/.local/share/Steam` while in *Windows* the path is `C:\Program Files\Steam`. As we can see, the file separator character (`/` and `\`) is different depending on the OS.

In order to access system properties we must call `System.getProperty("path.separator")` with a specific argument provided in this case `"path.separator"`.

Some files and directories related statements:

- `file.separator` - returns character that separates components of a file path
- `user.home` - returns user home directory
- `user.dir` - returns user working directory
- `path.separator` - returns path separator character used in `java.class.path`. This character is used to separate individual file paths from each other when they are going one after another (`:` on Unix and `;` on Windows).

**NOTE:** sometimes accessing these properties can be restricted due to the security manager of the system.


---

## Practice

What does `user.home`return?

???

What does `path.separator` return?

???

What does `file.separator`return?

???

What does `user.dir` return?

???

- returns user home directory
- path separator character
- character that separates components of a file path
- user working directory


---

## Revision

Why is it important to consider different system properties when working with file systems?

???

- Different operating systems have their own unique properties which if mixed up will ruin the program
- System properties are changing through out the execution process so it is important to stay up to date to ensure the correctness of the program
