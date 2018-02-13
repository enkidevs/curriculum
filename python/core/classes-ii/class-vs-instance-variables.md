# **Class** vs. **Instance** variables
author: catalin

levels:

  - basic

  - medium

type: normal

category: tip

parent: method-objects

notes: >
  Insight needs to be rewritten. There is overuse of the string Enki (caps and
  small) for different things like class name and class level var. Also, the
  values passed to the constructor are numbers like 0.2.3 etc. which are
  meaningless and will be confusing to at least beginners. Simple values like
  'a' and 'b', or 1 and 2 could be used instead. --> updated.

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#class-and-instance-variables){website}

---
## Content

The difference between **class** and **instance** variables:

**Class variables** are used for *attributes* and *methods* shared by all instances of a class. **Instance variables** are used for data unique to each *instance*.

Suppose we have the class definition:
```python
class Employee:
  count = 0   # class var
  def __init__(self, name):
    Employee.count += 1
    self.name = name   # instance var
    self.idnum = Employee.count   # instance var
```

The difference between the types of variables can be easily seen:
```python
john = Employee("John")
emily = Employee("Emily")
print(john.count) # 2
                  # (shared/class)
print(emily.count) # 2
                   # (shared/class)

print(john.idnum) # 1
                  # (unique/instance)
print(emily.idnum) # 2
                   # (unique/instance)
```

---
## Revision

Is `my_var`  a class or instance variable?

???

```
class Test:
   my_var = ‘enki’
```

*`class`
*`instance`
