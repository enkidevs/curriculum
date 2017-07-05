# Python packages
author: SebaRaba

levels:

  - beginner

type: normal

category: must-know

links:

  - '[More about packages](https://code.tutsplus.com/tutorials/how-to-use-python-packages--cms-26000)'

---
## Content

A **package**[1] is a hierarchical file directory structure that defines a *single* Python application environment. Packages consist of modules and subpackages.

Consider a file `available_rooms.py` in a directory called **Hotel**:

```py
# available_rooms.py

def available(rooms):
    print(rooms, ', are available.')
```
Then, a file `total_rooms.py` in the *same* directory:

```py
# total_rooms.py

def all_rooms(total):
    print('We have: ', total, 'rooms.')
```

Now that we have these files defined in out **Hotel package** we can use them in our script by importing this package:

```py
# rooms_update.py

import Hotel

Hotel.available(10)
# 10 rooms are available
Hotel.all_rooms(25)
# We have: 25 rooms.

```
---
## Footnotes

[1:Python packages]
Speaking about Python versions that are older than Python **3.3**: each **package** is a **directory** that **must** contain a special file called: `_init_.py`. This **file** indicates that the directory it contains is a **Python package**. The `__init__.py` file is usually empty, but can be used to **export** selected portions of the package under more convenient name.

---
## Practice

Complete the missing that such that the `House` package is imported and used properly:
```py
??? Hotel ???

def foo(x):
    capacity = ???.all_rooms(x)
    return capacity
```


* `import`
* `Hotel`
*
* `from Hotel import all_rooms`
* `from`
* `as`
* `all_rooms`

---
## Revision

Taking into consideration that the available `House` package exposes the `available_rooms` method, complete the following code snippet such that the could will run as intended:
```py
form Hotel import ???

def foo(x):
    ???available_rooms(x)
```

* `available_rooms`
*
* `Hotel`
* `Hotel.`
* `total_rooms`
