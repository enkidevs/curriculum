---
author: tommarshall

tags:
  - introduction

type: normal

category: must-know

aspects:
  - introduction

---

# Data types

---
## Content

Everything in Python has a data type, or *class* [1]. The ones you need to know about now are:

- **Integers** - any whole number. Integers belong to the `int` class:

```bash
>>> type(12)
# <class 'int'>
```

- **Floats** - any decimal number. Floats belong to the `float` class:

```bash
>>> type(12.0)
# <class 'float'>
```

- **Strings** - any character wrapped in single or double quotes (`''` or `""`). Strings belong to the `str` class:

```bash
>>> type('12')
# <class 'str'>
```

We can use Python's built-in `type` function, passing an argument in parenthesis, to see the data type, or class, of our argument. 

Other Python data types that you'll soon learn about are:
- **Boolean**
- **Set**
- **Dictionary**
- **List**
- **Tuple**

---
## Practice

What class does the following return?

```python
>>> type('Learning Python')
# <class '???'>
```
* str
* string
* text
* data

---
## Revision

```python
>>> type('3.0')
# <class '???'>
```
* str
* string
* float
* int

---
## Footnotes

[1:Classes]
A class is a code template where objects are created. For example, we may have a Car class which acts as a factory for making unique car objects. These cars will belong to the Car class.