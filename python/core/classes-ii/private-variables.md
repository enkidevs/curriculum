---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know


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
```
class Test:
   def __init__(self):
       self.__x = “hey there”
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
```
???private = 30
```


* `__` 
* `&&` 
* `--` 
* `def` 
* `class` 
* `private` 
* `p_`

