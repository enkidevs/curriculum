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

# Manipulating Environment Variables (Part 1)

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

We will cover all 4 in the upcoming insights.
