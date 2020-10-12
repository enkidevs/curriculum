---
author: emmab
tags:
  - introduction
type: normal
category: must-know
---

# The `not` operator


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

You can also negate the `in` and `is` operators to check whether a value is `not in` another object, or to check whether an instance `is not` identical to another instance. 


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
```

???

- `False`
- `True`
- `Error`
- `false`
