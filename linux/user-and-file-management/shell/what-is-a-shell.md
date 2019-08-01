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

  - 




---

# What is a *shell*?

---
## Content

A *command shell*[1], *command-line interface*, or simply *shell* is any text-based user interface used to access an operating system's underlying services.   They all work very similarly:

1. The user is presented with a prompt.
2. The user types a command and presses enter.
3. The shell interprets the command and tries to take the appropriate action.
4. The shell provides feedback to the user about whether the command worked.
5. Once the command is finished, the user is presented with a new prompt.

### Shells on Unix

On Unix-based operating systems like Linux, most command shells descend from `sh` (aka the *Bourne shell*), which was first released in 1979.  Today, the default shell on most Unix-based operating systems is `bash` (aka the *Bourne again shell*). `bash` is far-and-away the most common shell.

The "classic" `bash` prompt looks like this:

```shell
jesse@dewey data $
```

Here `jesse` is the username of the current user, `dewey` is the name of the computer, `data` is the current working directory, and `$` is the "prompt".


### Other Shells

Other shells include `zsh` (the *Z shell*), `ksh` (the *Korn shell*), `ash` (the *Almquist shell*), `fish` (the *friendly interactive shell*), and more.

Every shell has its own syntax for issuing commands, although there is often considerable overlap.  For example, most shells support `sh` syntax for historical reasons but add their own new, `sh`-incompatible features and syntax.

---
## Revision

Which of the following is the most common *shell*? 

???

* bash
* sh
* zsh
* fish

---
## Footnotes
[1:Command Shell]
When someone refers to the Linux "command shell" or "command line interface" without any clarification, they're almost always referring to `bash`.
 
