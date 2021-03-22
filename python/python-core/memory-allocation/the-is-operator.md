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
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The is operator


---

## Content

Python's `is` operator is used to match *instances of variables*.

The `is` operator will evaluate to `True` if the variables on either side of it point to the *same object*, not just the same value.

For example:

```python
a_string = 'python'
another_string = a_string

print(hex(id(a_string)))
# 0x7f08230518b8

print(hex(id(another_string)))
# 0x7f08230518b8

another_string is a_string
# True
```

Whereas:

```python
x = 'any string'
y = 'any string'

print(hex(id(x)))
# 0x7f082197b4f0

print(hex(id(y)))
# 0x7f082197b530

x is y
# False

y is x
# False

x == y
# True
```

> 💡 The `==` operator can be used to check whether the *values* are the same.

Let's take a look at another example:

```py
x = 'hello'
y = 'hello'

x is y
# True
```

Although `x is y` should be `False`, the result is `True` in this case. This is due to how Python manages memory. The interpreter optimizes location in memory and both `x` and `y` end up pointing to the same object:

```py
print(hex(id(x)))
# '0x7faef0fc9dc0'

print(hex(id(y)))
# '0x7faef0fc9dc0'
```

You can also negate the `is` operator to check whether an instance `is not` identical to another instance.


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

# ???
```

- `False`
- `True`
- `Error`
- `false`
 
