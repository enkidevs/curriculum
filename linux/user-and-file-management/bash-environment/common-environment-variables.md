---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - linux
  - environment
  - variables
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
---

# Common Environment Variables


---

## Content

On Linux (and other Unix-based operating systems), common environment variables include:

- `HOME`, which contains the current user's home directory. That is the top-level directory to most other directories.

- `PATH`, which contains a list of directories where to look for a command. When a user types `echo` in the terminal, Linux finds the `echo` program in one of the directories listed in `PATH` and executes it.

- `PWD `, which stands for **Present Working Directory** and holds the path to the directory you're currently in. This is usually called the "working directory".

- `EDITOR`, which specifies the default text editor.

- `LANG`, which specifies the user's language, e.g., a value of `pt_BR` signifies that the user prefers Brazillian Portuguese.


---

## Revision

Print the value of the environmental variable `LANG` : 

```bash
??? ???
```

- `echo`
- `$LANG`
- `lang`
- `$lang`
- `ls`
