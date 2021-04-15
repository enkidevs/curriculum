---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
---

# Updating & Deleting


---

## Content

### Modifying an Existing Variable

You'll often want to modify an existing variable by appending or prepending data. To do this, you can reference an environment variable inside a string:

```bash
export FOOD="waffles"
echo $FOOD
# waffles

export FOOD="chocolate $FOOD"
echo $FOOD
# chocolate waffles
```

### Unsetting an Environment Variable

To unset or clear an environment variable use `unset`:

```bash
export FOOD="waffles"
echo $FOOD
# waffles

unset FOOD
echo $FOOD
# 
```

> 💡 If you reference a variable that hasn't been created yet (or that has been unset), it will have an empty string `""` as a default value.


---

## Practice

Modify, then unset, the variable.

```bash
echo $SOMETHING
# foobar
export SOMETHING="bar ???"
echo $SOMETHING
# bar foobar
??? SOMETHING
```

- $SOMETHING
- unset
- SOMETHING
- set


---

## Revision

Fill in the gaps to get the result:

```bash
a_var="bar"
a_var="???$???"
echo ???
# foobar
```

- foo
- a_var
- $a_var
