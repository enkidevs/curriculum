---
author: mihaiberq

levels:

  - basic

  - medium

type: normal

category: feature
aspects:
  - introduction
  - workout
  - deep

links:

  - '[An in-depth analysis of metaclasses](https://blog.ionelmc.ro/2015/02/09/understanding-python-metaclasses/){website}'

standards:
  python.object-oriented.5: 10

---

# Metaclasses

---
## Content

In Python, *classes* are also *objects*. Just like any other object, they must be an instance of something: in this case, a **metaclass**. You can find out the base metaclass of a class through:
```python
class Enki:
  pass
print(type(Enki))
# <class 'type'>
```
The default metaclass is `type` (not to be confused with the function `type()` that we've just used, which returns the class of an object):
```python
print(type(print))
# <class 'builtin_function_or_method'>
```
You can check if `Enki` is truly an **instance** of class `type` through:
```python
# metaclass, not the function
print(isinstance(Enki, type))
# True
enki = Enki()
print(isinstance(enki, Enki))
# True
```
Metaclasses are defined like normal classes, using `type` as the base class:
```python
class Meta(type):
  pass
```
However, the `metaclass` keyword argument has to be passed in order to change a class' default `type` metaclass:
```python
class Enki(metaclass=Meta):
  pass
print(type(Enki))
# <class '__main__.Meta'>
```
In other words, to create an instance of a class, there's not only the *class* that has to be considered, but also the *metaclass*:
```
metaclass -> class -> instance
```

---
## Practice

Create a new class of default type, instantiate it and print its type:

```python

class Enki???:
  pass

enki = ???
print(???(???))

```

* ()
* Enki()
* type
* enki
* Enki
* typeof
* (metaclass=Meta)


---
## Revision

What is the default metaclass of newly defined classes?

???


* `type`
* `meta`
* `type()`
* `class`
* `meta()`
