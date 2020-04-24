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

# Manipulating Environment Variables (Part 2)

---
## Content

### Capitalizing Environment Variables

First, by convention, environment variables are given names in ALL CAPS and underscores `_`.  It is possible, but not recommended, to use lower-case letters when naming environment variables. You'll only ever see us use ALL CAPS.

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

---
## Practice

Fill in the code to create and display a variable:

```shell
enki@host ~ $ ??? NAME="Enki"
enki@host ~ $ ??? ???
```

* export
* echo
* $NAME
* import
* NAME
* $echo
