# Decorators and methods
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

There's a distinction to be made regarding *functions* and *methods*. In Python, every *subroutine* is a called a function. **Methods**, on the other hand, are those functions that are part of an object.

What's special about these methods is the fact that to define them, they are passed a `self` parameter as the first argument. As stated above, they are part of an object (which includes classes):
```python
def get_fahrenheit(func):
  def wrapper(self):
    return "{0} F"
      .format(func(self) * 1.8 + 32)
  return wrapper

class Temperature(object):
  def __init__(self, celsius):
    self.degrees = celsius

  @get_fahrenheit
  def get_temp(self):
    return self.degrees

temp = Temperature(15)
print(temp.get_temp())
# 59.0 F
```
Notice the `self` argument passed to `wrapper` function. But this syntax has a flaw: if we are looking to use the **same decorator** for a function that takes *more than 1 argument*, how are we going to handle that? If to the above snippet we are going to add:
```python
def get_fahrenheit(func):
  def wrapper(self, arg1):
    return "{0} F"
      .format(func(self) * 1.8 + 32)
  return wrapper
```
Whenever we will call `get_temp`, a *TypeError* will be thrown.

We can extend this syntax and use the generic `*args`[1] and `**kwargs`[2] arguments to ensure that we handle any number of arguments required:
```python
def get_fahrenheit(func):
  def wrapper(*args, **kwargs):
    return "{0} F"
      .format(func(*args, **kwargs)*1.8+32)
  return wrapper
```

---
## Footnotes

[1: &#42;args]
The asterisk symbol (`*`) allows you to pass multiple arguments at once through a list or tuple:
```python
def func(x, y, z):
  print(x,y,z)
mylist = [1, 2, 3]
mytuple = (1, 2, 3)
func(*mylist)
func(*mytuple)
```
Outputs:
```
1 2 3
1 2 3
```
**args** is short for *arguments*.

[2: &#42;&#42;kwargs]
The double asterisk symbol (`**`) allows you to pass multiple named arguments at once through a dictionary:
```python
def func(x, y, z):
  print(x,y,z)
mydict = {"x":1, "y":2, "z":3}
func(**mydict)
```
Outputs:
```
1 2 3
```
**kwargs** is short for *keyword arguments*.

N.B. while this outputs:
```python
mydict = {"z":2, "y":1, "x":3}
func(**mydict)
# 3 1 2
```
A dictionary like this will raise an error:
```python
mydict = {"a":1, "b":2,"c":3}
# TypeError: unexpected keyword argument c
```

---
## Practice

What is the operator used to unpack a dictionary?

???

* `**dict`
* `*dict`
* `__dict`
* `dict.unpack()`


---
## Revision

A method is a function that

???

* is part of an object
* has exactly one argument
* is nothing special, both having the same meaning
* is decorated
