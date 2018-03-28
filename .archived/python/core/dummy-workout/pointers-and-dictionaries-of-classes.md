---
author: tommarshall

levels:

  - basic

type: normal

category: must-know

---
# Pointers and Dictionaries of Classes

---
## Content

When saying two class instances are equal to one another, the instance on the left becomes the class instance on the right.

So with `instanceA = instanceB`, `instanceA` is now *pointing* at `instanceB`.

Dictionaries in Python are used to store data in a similar way to lists; instead of using numbers, to access data you can use any kind of ID.

A dictionary is like a database for storing and fetching data.

Instances of classes can be assigned to an entry in a dictionary, this means a large number of class instances can be live whilst a program is running.

First, create a dictionary:
```python
dictionary = {}
```
We can then create class instances within this dictionary:
```python
# we will use the classes defined in the
# previous insight: Shape and Square
dictionary["3by7"] = Shape(3, 7)
```
Now the instance has been created within the dictionary, the dictionary can be used to access all the classes methods and attributes:

```python
print(dictionary["3by7"].getArea())
# 21
```

---
## Revision

Pick the true statement about the snippet below:
```python
objA = objB
```
???
* objA points to objB
* objB points to objA
* objA is not objB
* objB is not objA
