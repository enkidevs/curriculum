---
author: jfarmer

levels:

  - basic

  - beginner

type: normal

category: must-know

inAlgoPool: false

tags:

  - introduction

  - workout

aspects:
  - introduction
  - workout


---

# Using `which` To Find Executables

---
## Content

When you type the name of a program at the shell prompt, your shell will use the `PATH` environment variable to determine which executable to run.  Short of looking through all the directories listed in `PATH` yourself, how do you know *which* executable your shell will execute?

This is what the `which` command is for.  Given the name of a program, `which` will return the full path to the executable.  It looks like this:

```shell
jesse@host ~ $ which ls
/bin/ls
jesse@host ~ $ which ps
/bin/ps
jesse@host ~ $ which curl
/usr/bin/curl
jesse@host ~ $ which wget
/usr/local/bin/wget
jesse@host ~ $
```

This tells me that when I type `ps` at the prompt and hit enter, my shell will actually be running the `/bin/ps` executable.

**Note**: these paths are purely hypothetical and you may not see the same output on your own system.

There are two major use cases for `which`:

1. You have the name of an executable but need the full path
2. You have multiple copies of the same program installed but aren't sure which one your shell would execute

(2) is a very useful debugging tool, especially if you're ever trying to set up a development environment where you might have multiple versions of a compiler or interpreter installed, e.g., Python 2.0 and Python 3.0.  It directly answers the question, "Wait, am I running the executable I think I am or is my shell running something else?"

---
## Revision

???

command will tell you what executable your shell would be running after typing a command.

* which
* try
* ps
* where
* man

---
## Quiz 
### Do you know how to find the location of an executable?

Which built-in command returns the path to an executable?


 ???

* which ls
* type ls
* path ls
* ll ls
 
