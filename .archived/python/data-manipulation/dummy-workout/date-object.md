---
author: catalin

levels:

  - basic

  - medium

  - beginner

type: normal

category: tip

parent: datetime-module

notes: >+
  This part:


  Other constructors worth mentioning:


  date.fromtimestamp(timestamp)

  date.fromordinal(ordinal)


  needs clarification, according to the General Editorial Guidelines. The code
  will not run on its own. The timestamp and the ordinal should be specified
  clearly.


  The rest of it is fine.


links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/datetime.html#date-objects){website}

---
# `date` object

---
## Content

The `date` object represents the date part of a `datetime` object. As any date, it holds the specific *year*, *month* and *day* in a idealized calendar.

Basic constructor:
```python
import datetime
d = datetime.date(2015,5,2)
print(d) 
# 2015-05-02
print (d.year, d.month, d.day)
# 2015 5 2

```

The `today()` constructor:
```python
d = datetime.date.today()
print(d)
# 2016-02-16
```

Other constructors worth mentioning:
```python
date.fromtimestamp(timestamp)
date.fromordinal(ordinal)

```

This class provide a plethora of useful methods such as `date.replace(y,m,d)`, `date.strftime(format)` or `date.toordinal()` that are worth checking out.

---
## Practice

Print todays date:

```
d = ???.date.???()
print(d)
```

* datetime
* today
* dt
* Date
* current`
* now

---
## Revision

Complete the code snippet:

```
import ???
d = datetime.???(2016, 08, 12)
print(d)
``` 

* datetime
* date
* dt
* Date
* today
* set