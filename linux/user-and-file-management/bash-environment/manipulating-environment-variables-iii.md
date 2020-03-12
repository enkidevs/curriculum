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

# Manipulating Environment Variables (Part 3)

---
## Content


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

---
## Practice

Modify then unset the variable.

```bash
enki@host ~ $ echo $SOMETHING
foobar
enki@host ~ $ export SOMETHING="bar ???"
enki@host ~ $ echo $SOMETHING
bar foobar
enki@host ~ $ ??? SOMETHING
```

* $SOMETHING
* unset
* SOMETHING
* set
