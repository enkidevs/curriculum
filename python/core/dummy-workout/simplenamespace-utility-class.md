---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: feature

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/types.html#additional-utility-classes-and-functions){website}

---
# `SimpleNamespace` Utility Class

---
## Content

The `SimpleNamespace` type from the `types` library provides an alternative to an **empty class** (`class MyClass: pass`) from which one can add and remove attributes.

This was added in **Python 3.3**.
```python
import types

enki = types.SimpleNamespace()

enki.type = 'God'
print(enki.type) # God

del enki.type
print(enki.type)
# object has no attribute 'type'
```

---
## Practice

Using the `types` module, create a simple class, equivalent to an empty one:
```
import types

enki = ???.???()
```

*`types` 
*`SimpleNamespace` 
*`empty` 
*`type` 
*`SimpleClass` 
*`EmptyClass`

---
## Revision

What Python module contains the `SimpleNamespace` utility class?

???

* types
* type
* classes
* class
* utility
* utilities
 
