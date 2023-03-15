---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Creating Classes


---

## Content

Classes are *templates* which can be used to create objects. They *encapsulate* variables and methods[1] into a single entity, defining a general behavior for that entity (object) to follow.

Classes are defined with the `class` keyword and use Python's block structure[2]:

```python
class Employee:
  count = 0
```

To create an instance of a class (also called to "instantiate") is done like so:

```python
empty_empl = Employee()
```

However, what we just created is an empty object from the `Employee` class. The newly instantiated object can't do anything. It needs a method.

To define a method (e.g. the `__init__` method) we would have to do something like this:

```python
class Employee:
  count = 0
  def __init__(self, name):
    Employee.count += 1
    self.name = name
    self.idnum = Employee.count
```

The `__init__` method is the *initialization method* and it's called when you create a new instance of the class.

Now that we have the initialization method we can pass some information when creating a new `Employee`:

```python
basic_employee = Employee("John Doe")
```

Once the `__init__` method has been taken care of, other methods can be defined normally. However, the first argument of those methods must always be `self` (a circular reference to the created object):

```python
class Employee:
  # the code above
  def print_idnum(self):
    print("{0} is employee no. {1}".format(self.name, self.idnum))
```

> 💡 On the other hand, when calling methods, you do not need to pass `self` as a parameter, Python does that for you automatically.


---

## Practice

Which of the following is **not** a correct definition of a new class?

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

```plain-text
???
```

- B
- A
- C
- all


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

- A
- B
- C
- neither


---

## Footnotes

[1: Methods]

To explain what methods are, let's take a look at an example.

Think of a car as the object. The model, color or age of the car are the object's attributes. Whether the engine is on, or whether it's moving, are behaviors and would exist as methods.

[2: Block Structure]
Block structures in Python are determined by their indentation.

Take this piece of code for instance:

```python
class Employee:
  company = 'Enki'

  def __init__(self):
    print('Hello Enki')
 
  def message(self):
    print('Welcome to Enki')
 
emp = Employee() # Created an Instance

print('My company is: ', emp.company)
emp.message()
```

In the block scope of the `Employee` class, we have the `__init__` and `message` methods.

Each of the two methods has its block scope with only a `print` statement within.

Next, we have three 'one-liners' with no block scope. 

The `Employee` class can access both methods because they are in its block scope (shown with indentation). 

The first line of code that is not a part of the `Employee`'s block scope is the instantiation `emp = Employee()`.
 
