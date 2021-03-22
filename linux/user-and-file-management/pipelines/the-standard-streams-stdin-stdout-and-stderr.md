---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The Standard Streams: `stdin` , `stdout` , and `stderr`


---

## Content

In Unix, when a program wants to open a file for reading or writing it must obtain a "file descriptor" from the operating system.  The operating system keeps track of which file descriptor references which file.

Every process is automatically assigned three default file descriptors called `stdin` (standard input), `stdout` (standard output), and `stderr` (standard error).  Collectively these three file descriptors are sometimes called the "standard streams."

Historically, "standard input" meant a physical keyboard and the two output streams meant a monitor, but Unix abstracted this.  Thus a program reading from standard input doesn't know whether the input is coming from a human behind a keyboard, another program, the network, or some other source.  Likewise, a program writing to standard output doesn't know whether its output is being displayed on a monitor, sent to another program, or written to a file.

These abstractions form the basis for Unix pipelines, where the standard output of one program is fed to the standard input of another program.  Together, the result is behavior that neither program could produce on its own.


---

## Practice

Match the file descriptors with their names:

```plain-text
stdin - ???
stdout - ???
stderr - ???
```

- `standard input`
- `standard output`
- `standard error`
- `standard stream`


---

## Revision

How would a program know who is the source of the input received through `stdin`?

???

- It wouldn’t be able to find out
- `By stdin.source`
- `By stdin -s`
- By the type of input received
