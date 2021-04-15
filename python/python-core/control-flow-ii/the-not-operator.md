---
author: emmab
tags:
  - introduction
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The not operator


---

## Content

Python's `not` operator returns the opposite of whatever condition is given to it.

For example:

```python
not True
# False
```

```python
x = 5
y = 10

not (x < y)
# False
```

You can also negate the `in` operator to check whether a value is `not in` another object.


---

## Practice

Complete this expression to check that the variable `word` does not appear in `sentence`:

```python
word = 'list'
sentence = 'we know about numbers, strings and booleans'

??? word ??? in sentence:
    print("Let's learn some more data types!")
```

- `if`
- `not`
- `is`
- `elif`
- `else`


---

## Revision

What does the following code snippet return:

```python
True == (not True)

# ???
```


- `False`
- `True`
- `Error`
- `false`
 
