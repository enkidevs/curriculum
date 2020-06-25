---
author: catalin

levels:

  - basic

  - medium

type: normal

category: feature

inAlgoPool: false
aspects:
  - introduction
  - workout

standards:
  python.native-types-operations.8: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/datetime.html){website}'


---

# `datetime` module

---
## Content

Python's `datetime` module provides a toolkit of *classes* and *functions* for **date** and **time** manipulation - be it for simple or complex problems.

Notable is the fact that objects exposed by this module can be either **naive** or **aware**.

Unlike **naive** objects, **aware** objects have enough knowledge to locate themselves relative to other **aware** objects. (i.e. time zone/daylight saving time information is included).
They represent specific points in time that aren't open to interpretation.

The `datetime` module itself exports the constants:
```python
datetime.MINYEAR # 1
# smallest year of date/datetime objects
datetime.MAXYEAR # 9999
## largest year of date/datetime objects
```

Keep in mind that in the `datetime` **module** there is also a `datetime` **class** and they shouldn't be confused.
```python
# printing the current date and time
# with datetime class

import datetime
print (datetime.datetime.today())
# 2017-06-23 16:12:24.993654
```

---
## Practice

Is `datetime` a module or a class?

???


* `both`
* `a module`
* `a class`
* `neither`

---
## Revision

Using `datetime` module get the constant representing the maximum number a year can take:
```python
import datetime
print(???.???)
# 9999
```


* `datetime`
* `MAXYEAR`
* `year`
* `MAX_YEAR`
* `date`
* `time`
* `max_year`
