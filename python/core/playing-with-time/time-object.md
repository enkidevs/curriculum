---
author: catalin

levels:

  - basic

  - medium

type: normal

category: feature

standards:
  python.native-types-operations.8: 10

parent: datetime-module
aspects:
  - introduction
  - workout

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/datetime.html#time-objects){website}'
  - '[pymotw.com](https://pymotw.com/3/datetime/){website}'

---

# `date` and `time` in `datetime`

---
## Content

In the `datetime` module the `time` class is used to represent time values, while the `date` class provides support for calendar date values.

The `time` object has attributes for **hours**, **minutes**, **seconds** and **microseconds**, but it can also hold **time-zone** information through the custom `.tzinfo` (also exposed by `datetime` module) attribute.

Its constructor is of the form:
```python
time(hour, minute, second,
              microsecond, tzinfo)
```

While all arguments are optional, keep in mind their default value is `0`, so just calling `datetime.time()` will actually create a time object with the earliest possible time representation:
```python
from datetime import time
my_min = time()

# this is equivalent to constant:
# datetime.time.min

time.min == my_min # True

```

On the other hand, the latest representable time is of the form:
```python
my_max = time(23,59,59,999999)

# this is equivalent to
# datetime.time.max

time.max == my_max # True
```

The `date` constructor has all its arguments (**year**, **month**, **day**) mandatory. Keep in mind that if they are not in their respective ranges (e.g. `1 <= month <= 12`) an *error* will be thrown.
```python
from datetime import date
a_date = date(2017, 6, 26)
print(a_date) # 2017-6-26
```

You can also easily get the current date via the `.today()` method:
```python
current = date.today()
print(current) # 2017-06-27
```

Another way of creating a `date` is from a **timestamp value** (and even from a **proleptic Georgian ordinal value**[1]):
```python
d = date.fromtimestamp(1256953732)
print(d) # 2009-10-31
ord = d.toordinal()
print(ord) # 733711
ord_date = date.fromordinal(ord)
print(ord_date) # 2009-10-31
```

Both classes support the `.replace()` method which returns new objects replacing the specified value (in the order they are defined in the constructor).
```python

my_time = time(0,2,20)
print(my_time) # 00:02:20
print(my_time.replace(0,3)) # 00:03:20

my_date = date.today()
print(my_date) # 2017-06-27
print(my_date.replace(1986)) # 1986-06-27
```

---
## Practice

Complete the following code snippet with the missing gaps such that, by running it, the output will match given comments:
```python
from ??? import date, time

t = time()
print(t == time.???) # True
print(t.???(23,59,59,999999)
                      == time.???) # True

d = ???(1991, 12, 25)
print(d.???) # 12
print(d.???) # 727191

```


* `datetime`
* `min`
* `replace`
* `max`
* `date`
* `month`
* `toordinal()`
* `day`
* `max_time`
* `min_time`
* `totimestamp()`
* `today()`

---
## Revision

Which of the following lines of code can be used to initialize a `date` object of `datetime` module with the **current date**?

```python
from datetime import date
current = ???
```


* `date.today()`
* `date()`
* `current()`
* `date.current()`
* `date.now()`

---
## Footnotes
[1:proleptic Georgian calendar]
The proleptic Gregorian calendar is produced by extending the Gregorian calendar backward with negative values to dates preceding its official introduction in **1582**.
