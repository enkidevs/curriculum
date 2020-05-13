---
author: jfarmer

aspects:
  - introduction
  - workout

type: normal

category: must-know

tags:
  - introduction
  - shell
  - environment
  - variables


---

# Shell vs Environment

---
## Content

Shell and environment variables are slightly different.

You can define a new shell variable using the `=` operator:

```shell
drink="water"
echo $drink
water
```

Shell variables are used only by the shell itself, and not available to any of its children processes. They are commonly used in scripts to make calculations and to store intermediate results.

Environment variables are shell variables that have been exported, being available to its child process. We achieve this using the `export` command:

```shell
export DRINK="water"
echo $DRINK
water
```

Notice anything different? To avoid overwriting an important environment variable, it is **strongly recommended to write them in uppercase**. This way, you don't need to remember all the environment variables used by your system, you can look at the letter case.

> **Remember:** if it's your variable **lowercase it**. If you export it, **uppercase it**.

---
## Practice

Complete the code to create a new environment variable:

```bash
??? ???="Enki"
```

* export
* NEW_USER
* $NEW_USER
* new_user
* create

---
## Revision

Match the variable with the text:

```plain-text
??? - Environment 
??? - Shell
```

* HOME
* home
