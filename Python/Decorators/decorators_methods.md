# Decorators and methods
author: mihaiberq

levels:

  - beginner

type: normal

category: must know

---
## Content

There's a distinction to be made regarding *functions* and *methods*. In Python, every *subroutine* is a function. **Methods** are those functions that are part of an object.

What's special about these methods is the fact that to define them, they are passed a `self` parameter as the first argument. As stated above, they are part of an object (which includes classes):
```python
def decorate(func):
  def wrapper(self):
    return
  return wrapper

class Coordinate(object):
  def __init__(self, x, y):
    self.x = x
    self.y = y

  @decorate
  def get_absolute(self):
    return

coor = Coordinate(10, 12.5)
print(coor.get_absolute())
#
```
Notice the `self` argument passed to `wrapper` function. But this syntax has a flaw: if we are looking to use the **same decorator** for a function that takes *more than 1 argument*, how are we going to handle that? If to the above snippet we are going to add:
```python
def decorate(func):
  def wrapper(self, arg1):
    return
  return wrapper
```
Whenever we will call `get_absolute`, a *TypeError* will be thrown.

We can extend this syntax and use the generic `*args`[1] and `**kwargs`[2] arguments to ensure that we handle any number of arguments required:
```python
def decorate(func):
  def wrapper(*args, **kwargs):
    return func(*args, **kwargs)
  return wrapper
```

---
## Footnotes

[1: *args]
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
**Args** is just a naming convention for *arguments*.

[2: **kwargs]
The double asterisk symbol (`**`) allows you to pass multiple arguments at once through a dictionary:
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
**kwargs** is a naming convention for *keyword arguments*.

N.B. while this outputs:
```python
mydict = {"z":2, "y":1, "x":3}
func(**mydict)
# 3 1 2
```
A dictionary like this will raise an error:
```python
mydict = {"a":1, "b":2,"c":3}
# TypeError: unexpected keyword arg 'c'
```
