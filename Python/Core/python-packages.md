# Python packages
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more about packages](https://code.tutsplus.com/tutorials/how-to-use-python-packages--cms-26000)'

---
## Content

A **package**[1] is a hierarchical file directory structure that defines a single **Python** application environment. **Packages** consist of **modules** and **subpackages**.

Consider a file `available_rooms.py` in the **Hotel** directory:

```
# available_rooms.py

def available(rooms)
    print(rooms, ", are available.")
```
Then the file `total_rooms.py` in the same directory:

```
# total_rooms.py

def all_rooms(total)
    print("We have: ", total, "rooms.")
```

Now that we have these files defined in out **Hotel package** we can use them in our script by importing this package:

```
# rooms_update.py

import Hotel

Hotel.available(10)
Hotel.all_rooms(25)

# Output:
# 10 rooms are available
# We have: 25 rooms.
```
---
## Footnotes

[1:Python packages]
Speaking about Python versions that are older  than **Python 3.3**. Each **package** is a **directory** that **must** contain a special file called: `_init_.py`. This **file** indicates that the directory it contains is a **Python package**. The `__init__.py` file is usually empty, but can be used to **export** selected portions of the package under more convenient name.

---
## Practice

Choose the correct answer:
```
??? Hotel

def foo(x):
    capacity = ???.all_rooms(x)
    return capacity
```
???

* `import` and `Hotel`
* `from Hotel import all_rooms` and `Hotel`
* `import` and the second gap doesn't need to be filled

---
## Revision

Choose the correct answer:
```
form Hotel import ???

def foo(x):
    ???.available_rooms(x)
```
???

* `available_rooms` and nothing else
* `available_rooms` and `Hotel`
* `total_rooms` and nothing else
