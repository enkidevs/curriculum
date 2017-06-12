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

A **package** is a hierarchical file directory structure that defines a single **Python** application environment. **Packages** consist of **modules** and **subpackages**.

Each **package** is a **directory** that **must** contain a special file called: `_init_.py`. This **file** can be empty and it indicates that the directory it contains is a **Python package**.

Consider a file **available_rooms.py** in the **Hotel** directory:

```
def available()
    print(rooms, ", are available.")
```
Then the file **total_rooms.py** in the same directory:

```
def all_rooms()
    print("We have: ", total, "rooms.")
```

To be able to `import` the **package** and use both **methods** defined in the two files we need to add the explicit imports to `_init_.py`:

```
from available_rooms import available
from total_rooms import all_rooms
```
After adding these to the `_int_.py` file, you have all the defined classes available when you `import` the Hotel package:

```
import Hotel

Hotel.available()
Hotel.all_rooms()
```
Creating the following output:

```
# 10 rooms are available
# We have: 25 rooms.
```

---
## Practice

What is the difference between a normal directory and a package in Python?
???

* packages have `_init_.py` file.
* there is no difference.
* directories don't contain modules.

---
## Revision

What goes in the `_init_.py` files in order to use all modules defined in a directory?
???

* explicit `import`s of each module.
* define modules in this file as well.
* packages can't be imported.
