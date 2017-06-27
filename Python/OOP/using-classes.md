# Using Classes
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

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

You can also see two types of attributes: a class attribute (`count`) and instance attributes (`name`, `idnum`). A class attribute is a variable that has the same value for all instances of the class, while an instance attribute has a different value for each instance.

To illustrate the difference, we can define a new function that prints the `count` value:
```python
class Employee:
 # the above code
 def print_count(self):
   print(Employee.count)
```
And call `print_idnum` and `print_count` for both class instances:
```python
emily.print_idnum()
# 2
john.print_idnum()
# 1
emily.print_count()
# 2
john.print_count()
# 2
```
When `john` was created, `Employee.count` (the class attribute) was incremented and then assigned to the isntance attribute `self.idnum` (in this case, `self` becomes `john.idnum`). The same applies for `emily`: `Employee.count` is incremented and then assigned to `self.idnum` (`emily.idnum`).

John's personal `idnum` doesn't change when Emily joins the company, but the *total number* of employees in the company (which every eployee has due to being a member of the `Employee` class) changes for **all** current employees.


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
