---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [is
    operator](http://stackoverflow.com/questions/13650293/understanding-pythons-is-operator){website}
---

# The `is` operator


---

## Content

Python's `is` operator is used to match *instances of variables*.

The `is` operator will evaluate to `True` if the variables on either side of it point to the *same object*, not just the same value.

For example:

```python
a_string = 'python'
another_string = a_string

another_string is a_string
# True
```

Whereas:

```python
x = 'any string'
y = 'any string'

x is y
# False

y is x
# False

x == y
# True
```

Note that the `==` operator can be used to check whether the *values* are the same.


---

## Practice

The `is` operator is used to match ??? instead of values.

- instances
- objects
- lists
- classes


---

## Revision

What does the following code snippet return:

```python
pizza = 'yummy'
pasta = 'yummy'

pizza is pasta
```

???

- `False`
- `True`
- `Error`
- `false`
