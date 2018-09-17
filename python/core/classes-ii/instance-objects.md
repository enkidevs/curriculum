---
author: catalin

levels:

  - basic

  - medium

type: normal

category: must-know

standards:
  python.object-oriented.2: 10
aspects:
  - introduction
  - workout
links:

  - '[docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#instance-objects){website}'

---

# Instance objects

---
## Content

Instances are individual objects of a specific *Class*. For example, we might have the class `Coordinate`, but with different instances.  

**Instance** objects are created by instantiation:
```python
class Coordinate:
  def __init__(self, x, y):
    self.x = x
    self.y = y
  def dist(self, other):
    x_dist = (self.x-other.x)**2
    y_dist = (self.y-other.y)**2
    return (x_dist + y_dist)**0.5

#instantiation
c1 = Coordinate(1,1)
c2 = Coordinate(4,5)
```

Instance objects only understand **attribute references** as operations:
- data attributes
- methods

Data attributes act like local variables and *don't need to* be defined in the class namespace. They spring into existence at the first assignment.
```python
c1.quadrant = "first"
print(c1.quadrant)
# "first"
```
Methods are different. Basically a **method** is a function that belongs to a `class`.

Theoretically, all attributes of a class that are function objects define corresponding instance methods.

So if `Coordinate.dist` is a function object, then `c1.dist` (`c1` being an instance of `Coordinate` class) is an instance method. Please note the difference between **function** and **method**.

```python
c1.dist(c2) # 5.0
            # (instance method)
Coordinate.dist(c1,c2) # 5.0
                       # (function object)
```

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
