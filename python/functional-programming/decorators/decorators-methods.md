---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Decorators and methods


---

## Content

There's a distinction to be made regarding *functions* and *methods*. In Python, every *subroutine* is a called a function. **Methods**, on the other hand, are those functions that are part of an object.

What's special about these methods is the fact that to define them, they are passed a `self` parameter as the first argument. As stated above, they are part of an object (which includes classes):

```python
# define a decorator
def get_fahrenheit(method):
  # as this decorator potentially targets
  # methods, pass self as a parameter
  def wrapper(self):
    # "self" argument is passed
    return "{0} F".format(method(self) * 1.8 + 32)
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

We got it now working for methods. But what if we are looking to decorate methods, as well as standalone functions? We can extend this syntax and use the generic `*args`[1] and `**kwargs`[2] arguments to ensure that we handle any number of arguments required:

```python
def get_fahrenheit(method):
  # exepect any number of args/named args
  def wrapper(*args, **kwargs):
    return "{0} F".format(method(*args,**kwargs)*1.8+32)
  return wrapper

class Temperature(object):
  def __init__(self, celsius):
    self.degrees = celsius

  @get_fahrenheit
  #two extra arguments expected here
  def get_temp(self, extra1, extra2 = 0, extra3 = 0):
    return self.degrees + extra1 + extra2 + extra3
temp = Temperature(15)
# self is passed by default
print(temp.get_temp(3, extra2 = 1))
# 66.2 F (instead of 59.0F)
```


---

## Practice

When defining a decorator, the most general syntax you can use is:

```python
# A
def deco(func):
  def wrapper(*args, **kwargs):
    ...
# B
def deco(func):
  def wrapper(**args, *kwargs):
    ...
# C
def deco(func):
  def wrapper(self):
    ...
# D
def deco(func):
  def wrapper(self, args, kwargs):
    ...
```

```plain-text
???
```

- A
- B
- C
- D


---

## Revision

In case of a decorator that targets `methods`, which is a valid declaration?

```python
# A
def deco(method):
  def wrapper():
    return method(1) + method(2)
  return wrapper
# B
def deco(method):
  def wrapper(self):
    return method(self, 1) + method(self, 2)
  return wrapper
# C
def deco(self):
  def wrapper(method):
    return method(self, 1) + method(self, 2)
  return wrapper
```

```plain-text
???
```

- B
- C
- A
- A and C
- A and B
- they are all valid


---

## Quiz

### what is the output of the following snippet?


```python
def foo(a,b,*args,**kwargs):
  print(a, b, args, kwargs)
x = {'ten': 10}
foo(1, 2, enki='wow', **x)
```

 ???

- 1 2 () {'enki': 'wow', 'ten': 10}
- (1, 2) {'enki': 'wow', 'ten': 10}
- 1 2 [] {'enki': 'wow', 'ten': 10}
- 1 2 ('enki', 'wow') {'ten': 10}


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

```plain-text
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

```plain-text
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
 
