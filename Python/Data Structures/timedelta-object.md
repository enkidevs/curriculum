# `timedelta` object
author: catalin

levels:

  - basic

  - medium

type: normal

inAlgoPool: false

category: feature

parent: datetime-module

notes: >
  Insight has multiple errors, such as variables not defined before use, names
  used before imported, etc. Needs to be rewritten with more care.

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/datetime.html#timedelta-objects){website}

---
## Content

The `timedelta` object provided by the `datetime` module represents a duration equal to the difference between two **dates** or **times**.

Instantiate a `timedelta`  object:
```python
import datetime as dt
# timedelta(days=0, seconds=0, 
# microseconds=0,# milliseconds=0,  
# minutes=0, hours=0, weeks=0)
# all args are OPTIONAL and default to 0
d = dt.timedelta(days=1, hours=3)
# the difference is one day and three hours

``` 

Substract the difference from a `datetime`:
``` python
import datetime as dt

today = dt.datetime.today()
d = dt.timedelta(days=1)
yesterday = today - d;
print(yesterday)
# 2016-02-15 15:05:14.095240

``` 
More operations are supported such as *multplication* and *division*.

With the introduction of **Python 3.2**, floor division and true division are supported between `timedelta` objects or by `floats`. This applies as well to `timedelta.total_seconds()` method that will return the number of seconds contained in the difference.
```python
#older version equivalent
 td / timedelta(seconds=1)
```

---
## Revision

Instantiate a `timedelta` object:

```
import ??? as dt
d = dt.???(days=1, hours=3)
```

*`datetime` 
*`timedelta` 
*`dt` 
*`time` 
*`date` 
*`today`