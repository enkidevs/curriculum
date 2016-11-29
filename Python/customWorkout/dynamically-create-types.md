# Dynamically create types
author: Ricardo

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - type

  - runtime

  - dynamic

  - OOP

links:

  - >-
    [docs.python.org](https://docs.python.org/2/library/functions.html#type){website}

---
## Content

The `type` function can be used to create types at runtime.

The function takes three arguments `name`, `bases` and `dict`. These are used to specify the attributes of the returned type.

```python
NType = type("NType", (object,), dict(x=1))
print NType.x
1

```



This is the equivalent class declaration:

```python
class NType(object):
  x = 1
```