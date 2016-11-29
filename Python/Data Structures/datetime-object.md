# `datetime` object
author: catalin

levels:

  - basic

  - medium

type: normal

inAlgoPool: false

category: feature

parent: datetime-module

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/datetime.html#datetime-objects){website}

---
## Content

The `datetime` type is a single object that encapsulates both a `date` and `time` object. This type is an **aware** object that will keep record of a specific point in time, not open to interpretation.


Its basic constructor combines the parameters of `date` and `time`  objects constructors:
```python
from datetime import datetime
d = datetime(2016, 2, 15, 13, 25)
print(d)
# 2016-02-15 13:25:00
``` 
Get the current exact time:
```python
datetime.now() == datetime.today()
```

The difference between the `now()`  and `today()` methods is that the former can be passed a `tzinfo` (timezone) argument which is by default set to `None`.

The `datetime` class is a complex one, with many methods that will meet most needs related to date and time manipulation.

---
## Practice

Instead of using `datetime.now()` , what other method from the module can be used to get the current time?
```python
???.???()
```

*`datetime` 
*`today` 
*`date` 
*`time` 
*`now` 
*`current` 
*`tzinfo`

---
## Revision

Complete the following snippet such that the constructor makes sense:
```
from datetime import ???
d = datetime(2016, 3, 16, 12, 10)
```
*`datetime` 
*`date` 
*`time` 
*`tzinfo`