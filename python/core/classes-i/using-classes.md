---
author: mihaiberq

levels:

  - basic

type: normal

category: must-know
aspects:
  - introduction
standards:
  python.object-oriented.6: 10

---

# Using Classes

---
## Content

To use a class, you must create an instance of a class. Take the previous class:
```python
class Employee:
  count = 0
  def __init__(self, name):
    Employee.count += 1
    self.name = name
    self.idnum = Employee.count
  def print_idnum(self):
    print("{0} is employee no. {1}"
      .format(self.name, self.idnum))
```
To create an instance of the class:
```python
john = Employee("John")
emily = Employee("Emily")
```
When creating an instance of a class, the `__init__` function is called and this returns the class instances: `john` and `emily`.

Any instance of the class can then access the class methods:
```python
john.print_idnum()
# 1
emily.print_idnum()
# 2
```

---
## Practice

Create an instance of the previousely defined class `Employee`. It should have "Steve" as an argument:

```python
class Employee:
  count = 0
  def __init__(self, name):
    Employee.count += 1
    self.name = name
    self.idnum = Employee.count
  def print_idnum(self):
    print("{0} is employee no. {1}"
      .format(self.name, self.idnum))

steve = ???(???)
```

* Employee
* 'Steve'
* Steve
* Employer
* employee



---
## Revision

The most specific syntagm used to define the `count` variable below is:
```python
class Car:
  count = 0
  def __init__(self):
    ...
```
???

* class attribute
* instance attribute
* class variable
* instance variable
