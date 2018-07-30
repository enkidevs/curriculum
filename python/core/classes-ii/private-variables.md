---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal
aspects:
  - introduction
  - workout
category: must-know

standards:
  python.object-oriented.4: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#private-variables){website}'


---

# Private Variables

---
## Content

Really **private** instance variables (variables that can't be accessed except from within the object) **do not exist** in Python. But the following naming convention makes Python rename the variable. so it becomes pseudo-private:

The convention is to put two underscores (`__`) at the beginning of the "private" variable.

Consider the `Enki` class:
```python
class Enki:
    def __init__(self):
        self.__private = 3.14
        print(self.__private)


enki = Enki() # prints 3.14

```
However, if we try to access `__private` variable, an error is thrown:
```python
print(enki.__private)
# AttributeError .. no __private attribute
```
It is possible to access it through `_classname__varname`, but it's not recommended to access variables in this way, because it is an implementation detail and may break in the future.

```python
print(enki._Enki__private)
# prints 3.14
```

---
## Practice

What is the output of the following snippet?
```python
class Test:
   def __init__(self):
       self.__x = "hey there"
t = Test()
print(t.__x)
???
```


* `AttributeError`
* `PrivateError`
* `Hey there`
* `hey there`

---
## Revision

Complete the following line such that the `private` variable is considered private considering Python conventions:
```python
???private = 30
```

* `__`
* `&&`
* `--`
* `def`
* `class`
* `private`
* `p_`

---
## Quiz

### Do you know how private variables work?

We've defined a pythonic private variable in this class. Is it really private?  
```python
class Secret:
    def __init__(self):
        self.__supersecret = "the earth is not flat"
        print(self.__supersecret)

topsecret = Secret()
```


- No, you can access the private variable via 'topsecret._Secret__supersecret'
- No, you can access the private variable via 'topsecret.__Secret.__supersecret'
- No, you can access the private variable via 'topsecret._private__supersecret'
- Yup, your secret is safe forever!
