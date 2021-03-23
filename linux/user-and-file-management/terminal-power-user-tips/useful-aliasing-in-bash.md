---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - terminal
  - alias
  - 'null'
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Useful aliasing in bash


---

## Content

The `alias` tool is a way to simplify things by giving them a new "false name".

```bash
alias short_word="Command"
```

You can use an alias instead of longer commands, adding them on your `.bashrc` file to make them permanent.

```bash
alias ll="ls –l"
```

In this example, typing `ll` will now return ‘long listing format’.

Quick exit with alias:

```bash
alias x="exit"
```

Other examples:

```bash
alias rm="rm -iv"
alias nbrc="nano ~/.bashrc"
```

Now, to open *~/.bashrc* in nano text editor:

```bash
nbrc
```

Or, to find the top 10 largest files in your system, you can set the following ‘alias’:

```plain-text
alias top10=
  "find . -type f -exec ls -sh {} \; |
  sort -n -r | head -10"
```

To save the aliases for future use, you have to add the command to the end of `~/.bashrc` file and then execute it:

```bash
# using the alias created earlier
nbrc
# add a new aliased command to the end
# of the file then execute ~/.bashrc
. ~/.bashrc # notice the . at the beginning
```


---

## Practice

Complete the following snippet:

```bash
??? ???="netstat -a | more"
ports
```

- `alias`
- `ports`
- `sudo`
- `ran30`


---

## Revision

??? is used to give a “false name” to other commands.

- alias
- short
- rm
- ctrl+k


---

## Quiz

### Can you figure out what a command does given only its output?


Consider the following command and its output:

```bash
ll
total 40
drwxr-xr-x  4 enki enki 4096 Nov 16 12:37 Comp. Sci.
drwxr-xr-x  6 enki enki 4096 Nov 16 12:37 Git
drwxr-xr-x 19 enki enki 4096 Nov 16 12:37 Java
drwxr-xr-x 21 enki enki 4096 Nov 16 12:37 JavaScript
```

Which of the following statements is true?

 ???

- ll is an alias for 'ls -l' plus additional, optional flags
- ll is another implementation of ls
- ll is an extension to ls that accepts additional flags
- ll is Ubuntu's version of ls
