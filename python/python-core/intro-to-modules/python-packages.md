---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [More about
    packages](https://code.tutsplus.com/tutorials/how-to-use-python-packages--cms-26000){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Python packages


---

## Content

A **package**[1] is a hierarchical file directory structure that defines a *single* Python application environment. Packages consist of modules and subpackages.

Consider a file `available_rooms.py` in a directory called **Hotel**:

```python
# available_rooms.py

def available(rooms):
  print(rooms, ' rooms are available.')
```

Then, a file `total_rooms.py` in the *same* directory:

```python
# total_rooms.py

def all_rooms(total):
  print('We have: ', total, 'rooms.')
```

Lastly, you need to have a file named `__init__.py` in your **Hotel** directory. This file indicates that the directory contains a Python package. It is usually empty, but it can be used to export portions of the package under a more convenient name.

Now that we have these files defined in our **Hotel package**, we can use them in our script by importing this package:

```python
# rooms_update.py

from Hotel import available_rooms, total_rooms

available_rooms.available(10)
# 10 rooms are available.
total_rooms.all_rooms(25)
# We have: 25 rooms.
```

Note that the script `rooms_update.py` should be located in the main directory of your application. Here is how the file structure looks like:

```plain-text
my_app/
  rooms_update.py
  Hotel/
    __init__.py
    available_rooms.py
    total_rooms.py
```


---

## Practice

Complete the missing code such that the `Hotel` package is imported and used properly:

```python
??? Hotel ??? total_rooms

def foo(x):
  capacity = ???.all_rooms(x)
  return capacity
```

- `from`
- `import`
- `total_rooms`
- `as`
- `all_rooms`


---

## Revision

Say the `Hotel` package exposes the `available_rooms()` method. Complete the following code snippet such that only that function will be imported:

```python
??? Hotel import ???

def foo(x):
  return ???.available(x)
```

- `from`
- `available_rooms`
- `available_rooms`
- `Hotel.available_rooms(x)`
- `total_rooms`
- `all_rooms`


---

## Footnotes

[1:Python packages]
Speaking about Python versions that are older than Python **3.3**: each **package** is a **directory** that **must** contain a special file called: `__init__.py`. This **file** indicates that the directory it contains is a **Python package**. The `__init__.py` file is usually empty, but can be used to **export** selected portions of the package under more convenient name.
 
