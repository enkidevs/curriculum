# `datetime` module
author: catalin

levels:

  - basic

  - medium

type: normal

inAlgoPool: false

category: feature

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/datetime.html){website}

---
## Content

Python's `datetime` module provides multiple classes regarding date manipulation. Accessible **date and time objects** are either *naive* or *aware* and can be used as both simple and complex solutions.

Unlike **naive** objects, **aware** objects have enough knowledge to locate themselves relative to other aware objects. (e.g. time zone/daylight saving time). They represent specific points in time that aren't open to interpretation.

 
The `datetime` module itself exports the constants:
```python
datetime.MINYEAR # == 1
# smallest year of date/datetime objects
datetime.MAXYEAR # == 9999
## largest year of date/datetime objects
```

While this module supplies multiple straightforward classes such as `date`, `time` or `timedelta`, it also supplies the `datetime` class that can be confused  with the name of the module.

Be aware of the distinction:
```python
from datetime import datetime
print (datetime.today())
## same result, different approach
import datetime
print (datetime.datetime.today())

```

---
## Practice

Is `datetime` a module or a class?

???

*`both` 
*`a module` 
*`a class` 
*`neither`

---
## Revision

Using `datetime` module get the constant representing the maximum number a year can take (using the module):
```
import datetime
???.???
```

*`datetime` 
*`MAXYEAR` 
*`year` 
*`MAX_YEAR` 
*`date` 
*`time` 
*`max_year`