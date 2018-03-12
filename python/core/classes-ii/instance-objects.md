---
author: catalin

levels:

  - basic

  - medium

type: normal

category: must-know


links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#instance-objects){website}'

notes: Multiple issues. Needs to be rewritten.

---
## Content
# Instance objects

Instances are individual objects of a specific *Class*. For example, we might have the class `Color`, but with different instances: one for **red**, one for **blue**, etc.

**Instance** objects are created by instantiation:
```python
#empty class
class Enki:
  pass
#instantiation
enki = Enki()
```

Instance objects only understand **attribute references** as operations:
- data attributes
- methods

Data attributes act like local variables and *don't need to* be defined in the class namespace. They spring into existence at the first assignment. 
```python
enki.a = 20
print(enki.a)
# 20
```
Methods are a little bit different. Basically a **method** is a function that belongs to a `class`.

Theoretically, all attributes of a class that are function objects define corresponding instance methods.

So if `Enki.x` is a function object, then `enki.x` (`enki` being an instance of`Enki` class) is a method. Please note the difference between **function** and **method**.

---
## Practice

Consider the following class:
```python
class Enki:
  def printEnki(self):
    print('Hello, Enki');
```

Complete the following snippet such that an **instance object** of the **class** above is created, but also the corresponding method of `Enki.printEnki` function object is called:
```
enki = ???;
???.???;
```


* `Enki()`
* `enki`
* `printEnki()`
* `Enki`
* `printEnki`
* `printenki`
* `pass`
* `class`

---
## Revision

Is the following snippet valid?
```
class Dog:
  pass
max = Dog()
max.age = 3
```
???

* Yes
* No

