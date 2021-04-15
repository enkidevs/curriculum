---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - linux
  - environment
  - variables
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Environment Variables


---

## Content

An *environment variable* is a variable that is available to all the processes running in the shell.

> 💡 You can think of environment variables like global variables.

Linux contains many default environment variables.

> 💡 Environment variables are usually named with all uppercase letters to differentiate them from regular variables.

As an example, the `HOME` environment variable holds the current user's home directory.

> 💡 A "directory" is just another name for a folder.

Use the `env` command to see a list of all current environment variables:

```bash
env
# USER=enki
# HOME=/home/enki
# ... (potentially many lines)
```

If you know the name of the variable you're looking for, use the `echo` command to display it:

```shell
echo $HOME
# /home/enki
```


---

## Practice

Display a list of all the current environment variables:

```bash
???
# USER=enki
# HOME=/home/enki
# ...
```

- env
- $env
- environment
- $environment


---

## Revision

Print the value of the environmental variable `HOME` : 

```bash
??? ???
```

- `echo`
- `$HOME`
- `home`
- `$home`
- `ls`
