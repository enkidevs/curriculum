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

# Manipulating Environment Variables

---
## Content


### Shell Variable vs Environment Variable

To understand what an *environment* variable is, we first have to understand what a *shell* variable is.

You can define a new shell variable using the `=` operator, like so:

```shell
enki@host ~ $ DRINK="water"
enki@host ~ $ echo $DRINK
water
enki@host ~ $
```

Shell variables are used only by the shell itself, and not available to any of its children processes. They are commonly used in scripts to make calculations and to store intermediate results.

```shell
enki@host ~ $ DRINK="water"
enki@host ~ $ AMT="plenty"
enki@host ~ $ ADVICE="drink $AMT of $DRINK"
enki@host ~ $ echo $ADVICE
drink plenty of water
enki@host ~ $
```

Environment variables are shell variables that have been exported, being available to its child process. We achieve this using the `export` command:

```shell
enki@host ~ $ export DRINK="water"
enki@host ~ $ echo $DRINK
water
enki@host ~ $
```

There are four things you might want to do to an environment variable, which we'll refer to as "variable" from here on out:

1. Create a new variable or overwrite an old variable
2. Display a variable's value
3. Modify an existing variable
4. Unset a variable

Here's how to do each one.

### Capitalizing Environment Variables

First, by convention, environment variables are given names in ALL CAPS and underscores `_`.  It is possible, but not recommended, to use lower-case letters when naming environment variables.  You'll only ever see us use ALL CAPS.

### Displaying a Variable

Use `echo` to print the contents of a variable.  If you reference a variable that hasn't been created yet it will have an empty string `""` as a default value.

Here `HOME` contains the full path to the current user's home directory while `FOOD` has not been set.

```shell
enki@host ~ $ echo $HOME
/home/enki
enki@host ~ $ echo $FOOD

enki@host ~ $
```

### Creating a New Variable

You can create a new environment variable using the `=` operator and the `export` command, like so:

```shell
enki@host ~ $ echo $FOOD

enki@host ~ $ export FOOD="waffles"
enki@host ~ $ echo $FOOD
waffles
enki@host ~ $
```

Make sure not to add any spaces around `=`.

```shell
enki@host ~ $ export FOOD = "waffles"
-bash: export: `=': not a valid identifier
enki@host ~ $
```

### Modifying an Existing Variable

Oftentimes you'll want to modify an existing variable by appending or prepending data. To do this you can reference an environment variable inside a string, like so:

```shell
enki@host ~ $ export FOOD="waffles"
enki@host ~ $ echo $FOOD
waffles
enki@host ~ $ export FOOD="chocolate $FOOD"
enki@host ~ $ echo $FOOD
chocolate waffles
enki@host ~ $
```

### Unsetting an Environment Variable

To unset or clear an environment variable use `unset`, like so:

```shell
enki@host ~ $ export FOOD="waffles"
enki@host ~ $ echo $FOOD
waffles
enki@host ~ $ unset FOOD
enki@host ~ $ echo $FOOD

enki@host $
```

### Variable creation syntax

We mentioned above that having spaces around `=` when creating an environment variable is not valid.

The problem is similar with a shell variable:

```shell
enki@host ~ $ FOOD = "waffles"
- bash: FOOD: command not found
enki@host ~ $
```

Note: `bash` treats most lists of words as a command with parameters. This means that in the snippet above, `bash` will interpret the name of the variable as a command and try to run it. You'll usually see a `command not found` error, but if your variable name happens to be the name of a command you'll see confusing output:

```shell
enki@host ~ $ FOOD = "waffles"
-bash: FOOD: command not found
enki@host ~ $ export ls = "giraffe"
ls: =: No such file or directory
ls: giraffe: No such file or directory
enki@host ~ $
```

Here, `bash` interprets `=` and `"giraffe"` as arguments to the `ls` command rather than a variable assignment. 

Avoiding this mistake is one of the reasons for the ALL CAPS convention.
