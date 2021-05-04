---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - shell
  - environment
  - variables
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

# Shell vs Environment


---

## Content

Shell and environment variables are slightly different.

You can define a new shell variable using the `=` operator:

```shell
drink="water"
echo $drink
# water
```

Shell variables are used only by the shell itself, and not available to any of its child processes. 

They are commonly used in scripts to make calculations and to store intermediate results.

Shell variables can be converted into environment variables with the `export` command:

```shell
# export DRINK shell variable
# into the environment
export DRINK="water"
echo $DRINK
# water
```

> ⚠ When exporting a variable into the environment, be careful not to overwrite another important environment variable with the same name. 


---

## Practice

Complete the code to create a new environment variable:

```bash
??? ???="Enki"
```

- export
- NEW_USER
- $NEW_USER
- new_user
- create


---

## Revision

Match the variable with the text:

```plain-text
??? - Environment 
??? - Shell
```

- HOME
- home
