---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:
  python.object-oriented.4: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#special-attributes){website}'
  - '[MRO](http://python-history.blogspot.in/2010/06/method-resolution-order.html){website}'


---

# Special attributes of objects and classes

---
## Content

Python *objects/classes/instances* have several more **read-only** attributes, some of which are not reported by the `dir()` function.

Attributes are ways of getting from one object to another.

Suppose we have the class:
```python
class Enki:
    pi = 3.14
```

Get all **writable** attributes of your `class object`:
```python
print(Enki.__dict__)
#{... 'pi': 3.14, '__module__': '__main__ }

```
Get the metaclass of `Enki`:
```python
print(Enki.__class__)
# <class 'type'>
```
You can also get a `tuple` of base classes of a class object with `class.__bases__`.

Get the name of your `class`/`type`:
```python
print(Enki.__name__)
# Enki

```

To get the **qualified name** (the name plus the level of nesting), the `class.__qualname__` attribute is available in Python 3.3:
```python
class Enki:
    pi = 3.14
    def f():
      pass

print(Enki.f.__name__)
# f
print(Enki.f.__qualname__)
# Enki.f
```

Get the order in which classes will be searched for a method, known as the **Method Resolution Order**, or **MRO**:
```python
print(Enki.__mro__)
#(<class '__main__.Enki'>,<class 'object'>)
```

---
## Practice

Get all the writable attributes of your object:

```
print(Enki.???)
```

* `__dict__`
* `dict`
* `dir()`
* `__dir__`

---
## Revision

Get the class’s metaclass:

```
print(Enki.???)
```

* `__class__`
* `class()`
* `__meta__`
* `class`
