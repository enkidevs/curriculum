---
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

aspects:
  - introduction
standards:
  python.identify-python-syntax.2: 10
  python.object-oriented.0: 10

---

# Creating Classes


---
## Content

Classes are *templates* which can be used to create objects. They *encapsulate* variables and methods[1] into a single entity, defining a general behavior for that entity (object) to follow.

Classes also use Python's block structure and are defined using the `class` keyword:
```python
class Employee:
   count = 0
```
You can then create (instantiate) a class object using the syntax:
```python
empty_empl = Employee()
```
However, our blueprint of the *Employee* class is empty. The newly instantiated object can't do anything. We can define a first method, `__init__`: it's called the *initialization method* and it's called when you create a new instance of the class:
```python
class Employee:
  count = 0
  def __init__(self, name):
    Employee.count += 1
    self.name = name
    self.idnum = Employee.count
```
We can now pass some information when creating a new Employee:
```python
basic_employee = Employee("John Doe")
```
Once the `__init__` method has been taken care of, other methods can be defined normally. However, the first argument of those functions must always be `self` (a circular reference to the created object):
```python
class Employee:
  # the code above
  def print_idnum(self):
    print("{0} is employee no. {1}"
      .format(self.name, self.idnum))
```
Note: When calling methods, you do not need to pass `self` as a parameter, Python does that for you automatically.

---
## Practice

Which of the following is __not__ a correct definition of a new class?
```python
# A
class Car:
  def __init__(self, model):
    self.model = model
# B
class Car:
  def __init__(model):
    self.model = model
# C
class Car:
  def start_car(self):
    print("Starting engine!")
```
???

* B
* A
* C
* all

---
## Revision

Pick the correct syntax for instantiating a class:
```python
# A
empl = Employee("John")

# B
empl = new Employee("John")

# C
new empl = Employee("John")
```
???


* A
* B
* C
* neither
