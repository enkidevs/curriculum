---
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
standards:
  python.object-oriented.1: 10

---

# Inheritance


---
## Content

Inheritance in Python allows you to define a class which is based on another existing class.

The new class *inherits* all the methods and attributes from the *parent* class, and also allows extra methods to be defined.

Consider the following class:
```python
class Shape:
  def __init__(self, x, y):
    self.x = x
    self.y = y

  def getArea(self):
    return self.x * self.y
```
To inherit the `Shape` class into the class `Square`, pass `Shape` as a parameter to `Square` like follows:
```python
class Square(Shape):
  def __init__(self, x):
    self.x = x
    self.y = x

  def getPerimeter(self):
    return self.x * 4
```
We can now create new methods, as well as use old ones:
```python
sq = Square(3)
print(sq.getPerimeter())
# 12
print(sq.getArea())
# 9
```

To check the inheritance:
```python
print(isinstance(sq, Square))
# True
print(isinstance(sq, Shape))
# True
print(issubclass(Square, Shape))
# True
```




---
## Practice

The concept of *inheritance* refers to a child class receiving parent's class

???


* attributes and methods
* class name and attributes
* methods
* attributes

---
## Revision

Pick the right class inheritance syntax:
```python
class Person:
  ...
# A
class Employee extend Person:
  ...
# B
class Employee = Person:
  ...
# C
class Employee(Person):
  ...
```
???

* C
* A
* B
* none

---
## Quiz

### Do you know how inheritance affects variables defined in the parent class?

Square is a child class of the Shape class. What is the output from the following code snippet?

```
class Shape:
    def __init__(self, x, y):
    self.name = "shape"
    self.color = "red"
    self.x = x
    self.y = y

class Square(Shape):
    def __init__(self, x):
    self.name = "square"
    self.x = x
    self.y = x

sq = Square(3)
print(sq.name)
print(sq.color)
```

- square AttributeError: Square instance has no attribute 'color'
- square red
- AttributeError: 'super' object has no attribute '__getattr__'
- AttributeError: 'super' object has no attribute '__setattr__'
