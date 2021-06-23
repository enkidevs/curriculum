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

  - introduction


---

# Variable Creation Syntax

---
## Content

In the previous insights, we mentioned in that having spaces around `=` when creating an environment variable is not valid.

The problem is similar with a shell variable:

```shell
FOOD = "waffles"
- bash: FOOD: command not found
```

Note: `bash` treats most lists of words as a command with parameters. This means that in the snippet above, `bash` will interpret the name of the variable as a command and try to run it. You'll usually see a `command not found` error, but if your variable name happens to be the name of a command you'll see confusing output:

```shell
FOOD = "waffles"
-bash: FOOD: command not found
export ls = "giraffe"
ls: =: No such file or directory
ls: giraffe: No such file or directory
```

Here, `bash` interprets `=` and `"giraffe"` as arguments to the `ls` command rather than a variable assignment. 

Avoiding this mistake is one of the reasons for the ALL CAPS convention.

---
## Practice

Which of the following is the correct way of defining a variable?

```shell
# A
export FOOD = "waffles"

# B
export FOOD="waffles"
```

???

* B
* A
 
 
