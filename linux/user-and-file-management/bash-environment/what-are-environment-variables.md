---
author: jfarmer

aspects:
  - introduction
  - workout

type: normal

category: must-know

tags:
  - introduction
  - linux
  - environment
  - variables


---

# Environment Variables

---
## Content

An *environment variable* is a variable that affects the way processes behave on a computer. 

For example, a process might look up the `HOME` environment variable to determine the current user's home directory.

Use the `env` command to see a list of all current environment variables:

```bash
env
USER=enki
HOME=/home/enki
# ... (potentially many lines)
```

You don't have to use `env` to display your environment variables. If you know its name, use the `echo` command to display it:

```shell
echo $HOME
/home/enki
```

---
## Practice

Display a list of all the current environment variables:

```bash
???
USER=enki
HOME=/home/enki
# ...
```

* env
* $env
* environment
* $environment

---
## Revision

Print the value of the environmental variable `HOME` : 
```bash
??? ???
```

* `echo`
* `$HOME`
* `home`
* `$home`
* `ls`