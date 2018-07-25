---
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know
aspects:
  - introduction
  - workout
standards:
  python.modules.0: 10
  python.modules.2: 10

links:

  - '[More about packages](https://code.tutsplus.com/tutorials/how-to-use-python-packages--cms-26000){website}'


---

# Python packages

---
## Content

A **package**[1] is a hierarchical file directory structure that defines a *single* Python application environment. Packages consist of modules and subpackages.

Consider a file `available_rooms.py` in a directory called **Hotel**:

```python
# available_rooms.py

def available(rooms):
    print(rooms, ', are available.')
```
Then, a file `total_rooms.py` in the *same* directory:

```python
# total_rooms.py

def all_rooms(total):
    print('We have: ', total, 'rooms.')
```

Now that we have these files defined in out **Hotel package** we can use them in our script by importing this package:

```python
# rooms_update.py

import Hotel

Hotel.available(10)
# 10 rooms are available
Hotel.all_rooms(25)
# We have: 25 rooms.
```

---
## Practice

Complete the missing that such that the `Hotel` package is imported and used properly:
```python
??? Hotel

def foo(x):
    capacity = ???.all_rooms(x)
    return capacity
```



* `import`
* `Hotel`
* `from`
* `as`
* `all_rooms`

---
## Revision

Say the `Hotel` package exposes the `available_rooms()` method. Complete the following code snippet such that only that function will be imported:
```python
??? Hotel import ???

def foo(x):
    ???
```


* `from`
* `available_rooms`
* `available_rooms(x)`
* `Hotel.available_rooms(x)`
* `total_rooms`

---
## Footnotes
[1:Python packages]
Speaking about Python versions that are older than Python **3.3**: each **package** is a **directory** that **must** contain a special file called: `_init_.py`. This **file** indicates that the directory it contains is a **Python package**. The `__init__.py` file is usually empty, but can be used to **export** selected portions of the package under more convenient name.
