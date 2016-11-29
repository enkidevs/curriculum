# `time` object 
author: catalin

levels:

  - basic

  - medium

type: normal

inAlgoPool: false

category: feature

parent: datetime-module

notes: >+
  The insight says:


  "every argument of the constructor is optional"


  So it is preferable to show how to call the constructor, while omitting some
  of the arguments, i.e. by using keywords arguments, either here, or by linking
  this insight to another one that explains keyword arguments. The latter
  approach is preferable, since then that "keyword arguments" insight can then
  be linked to, from other insights as well, which need such a link to explain
  them well).


  May be preferable to show at least another one or two examples of methods of
  the time object - if the insight length permits. Otherwise make another
  insight about this with a somewhat different but related title.



links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/datetime.html#time-objects){website}

---
## Content

The `time` object represents the time portion of the `datetime` object with microsecond precision. It represents a specific time of the day, independent of any particular one.

The `time` object can be adjusted via the `tzinfo` (also provided by `datetime` module) object, which specifies the time-zone information.

Basic constructor syntax :
```python
#time(hour,minute,second,microsecond,tzinfo)
from datetime import time
t = time(5, 0, 55, 222222)
print(t)
# 05:00:55.222222

``` 

Note that every argument of the constructor is *optional*, and `tzinfo` is by default set to `None`.

Allowed arg values: hrs 0-23, mins 0-59, secs 0-59, msecs 0-999999.

Earliest representable time:
```python
time.min == time(0, 0, 0, 0)
``` 
Latest representable time:
```python
time.max == time(23,59,59,999999)
``` 

The ` time` class has other methods, both basic and advanced, for other needs., such as `time.replace` or ` time.dst`.

---
## Practice

By which object, which specifies time-zone information, can the time object be adjusted with? ???

*`tzinfo` 
*`timezone` 
*`time-zone` 
*`tz-info`