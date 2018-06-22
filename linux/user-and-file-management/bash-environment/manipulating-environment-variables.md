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




aspects:
  - introduction


---

# Manipulating Environment Variables

---
## Content

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
jesse@host ~ $ echo $HOME
/home/jesse
jesse@host ~ $ echo $FOOD

jesse@host ~ $
```

### Creating a New Variable

You can define a new environment variable using the `=` operator, like so:

```shell
jesse@host ~ $ echo $FOOD

jesse@host ~ $ FOOD="waffles"
jesse@host ~ $ echo $FOOD
waffles
jesse@host ~ $
```

Make sure not to add any spaces around `=` or else `bash` will interpret the name of the variable as a command.  You'll usually see a `command not found` error, but if your variable name happens to be the name of a command you'll see confusing output:

```shell
jesse@host ~ $ FOOD = "waffles"
-bash: FOOD: command not found
jesse@host ~ $ ls = "giraffe"
ls: =: No such file or directory
ls: giraffe: No such file or directory
jesse@host ~ $
```

Here, `bash` interprets `=` and `"giraffe"` as arguments to the `ls` command rather than a variable assignment.  Avoiding this mistake is one of the reasons for the ALL CAPS convention.

### Modifying an Existing Variable

Oftentimes you'll want to modify an existing variable by appending or prepending data.  To do this you can reference an environment variable inside a string, like so:

```shell
jesse@host ~ $ FOOD="waffles"
jesse@host ~ $ echo $FOOD
waffles
jesse@host ~ $ FOOD="chocolate $FOOD"
jesse@host ~ $ echo $FOOD
chocolate waffles
jesse@host ~ $
```

### Unsetting an Environment Variable

To unset or clear an environment variable use `unset`, like so:

```shell
jesse@host ~ $ FOOD="waffles"
jesse@host ~ $ echo $FOOD
waffles
jesse@host ~ $ unset FOOD
jesse@host ~ $ echo $FOOD

jesse@host $
```

 
