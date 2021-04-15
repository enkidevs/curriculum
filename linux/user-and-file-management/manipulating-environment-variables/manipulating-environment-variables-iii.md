---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Understanding `PATH`


---

## Content

Understanding the `PATH` environment variable and how to manipulate it is one of the most important things a beginner can master.  

The contents of `PATH` tell your shell where to look for executables.  It is therefore central to understanding what happens when you type a command in the terminal.

### What Does The `PATH` Variable Contain?

The `PATH` variable itself contains a `:`-delimited list of directories:

```bash
echo $PATH
# /usr/local/bin:/usr/bin:/bin
```

> 💡 The fact that `:`'s are used to delimit the directories here is a matter of *convention*.  Other parts of the system assume the list is `:`-delimited, but if in the 1970s we had settled on `,` or `;` instead, we would still be using that today.


---

## Practice

The `PATH` environment variable is used by your shell to look for ???.

- executables
- directories
- paths
- code


---

## Revision

Which of these is used to delimit directories in the `PATH` variable?

???

- :
- ;
- ,
- .
