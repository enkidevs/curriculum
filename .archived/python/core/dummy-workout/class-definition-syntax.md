---
author: catalin

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

notes: >
  Possible intro to classes/oop workout for beginners. 


  Notes by Vasudev: The insight content is too small to stand alone. It should
  be linked to other insights on the same topic. Also, there should be a few
  examples given, of the definition of methods, and data members, and the calls
  to methods and getting and settting of data members, whether in other (linked)
  insights, or in this one. Probably not all in this one since it will exceed
  the character limit,

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/tutorial/classes.html#a-first-look-at-classes){website}

---
# Class definition syntax

---
## Content

Think of **classes** as *blueprints* for creating objects with data (members) and behaviors (methods). They just define **how** the actual instances are implemented.

To define a class, use the keyword `class`:
```python
class Enki:
  [statement]
  .
  .
  [statement]
```
Method definitions in a class (`def` statements) only define the method, they do not execute its body when encountered. Methods are only executed when they are invoked on a created class instance.

A **class object** is created when a class defition ends; it is a wrapper around the contents of the class.

You can create an empty class object using the `pass` keyword:
```python
class Enki:
  pass
```

---
## Practice

Method definition in a class is done with the help of ??? keyword.

* def
* pass
* return
* yield

---
## Revision

You can create an empty class with the ??? keyword.

* pass
* return 
* yield
* def