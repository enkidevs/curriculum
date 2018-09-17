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

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/datetime.html#timedelta-objects){website}'

standards:
  python.native-types-operations.8: 10
  python.standard-library-data.2: 10

parent: datetime-object

---

# Date arithmetics with `timedelta`

---
## Content

Another useful class provided by `datetime` is called `timedelta`. With this object you can calculate past or future dates along with differences between times.

This object will store a **difference** in time, a delta. Although internally the values are stored only in *days*, *seconds* and *microseconds*, its constructor can accept any argument related to time:
```python
from datetime import timedelta
from datetime import timedelta

day = timedelta(days=1)
week = timedelta(weeks=1)
minute = timedelta(minutes=1)

print(day) # 1 day, 0:00:00
print(week) # 7 days, 0:00:00
print(minute) # 0:01:00
```

You can use standard arithmetic operators to calculate new dates as follows:
```python
from datetime import datetime

today = datetime.today()
print(today) # 2017-06-28 13:12:35.145494

delta = timedelta(days=1)
yesterday = today - delta
print(yesterday)
# 2017-06-27 13:12:35.145494

day_after_tomorrow = today + delta * 2
print(day_after_tomorrow)
# 2017-06-30 13:12:35.145494

```

---
## Practice

Complete the following code snippet such that variable `x` will hold a date exactly 2 weeks from today:
```python
from datetime import datetime, timedelta

today = ???.today()

delta = ???(???=???)

x = today ??? delta ???

```


* `datetime`
* `timedelta`
* `days`
* `7`
* `+`
* `* 2`
* `weeks`
* `/ 2`
* `14`
* `months`
* `%`
* `date`
* `time`
* `delta`

---
## Revision

Calculate the value of `yesterday`:
```python
from datetime import datetime, timedelta

delta = timedelta(???=???)
today = datetime.today()

yesterday = ??? - ???
```


* `hours`
* `24`
* `today`
* `delta`
* `timedelta`
* `days`
* `2`
* `delta % 2`
* `date`
* `time`
* `today / 2`
