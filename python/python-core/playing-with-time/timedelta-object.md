---
author: catalin
type: normal
category: feature
links:
  - >-
    [timedelta
    Objects](https://docs.python.org/3.5/library/datetime.html#timedelta-objects){website}
  - '[Playground](https://repl.it/@enkicontent/PythonTimedelta){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Date arithmetics with timedelta


---

## Content

Another useful class provided by `datetime` is called `timedelta`. With this object you can calculate past or future dates along with differences between times.

This object will store a **difference** in time, a delta. Although internally the values are stored only in *days*, *seconds* and *microseconds*, its constructor can accept any argument related to time:

```python
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
from datetime 
import datetime, timedelta

today = datetime.today()
print(today) 
# 2020-06-15 13:35:50.540988

delta = timedelta(days=1)
yesterday = today - delta
print(yesterday)
# 2020-06-14 13:35:50.540988

day_after_tomorrow = today + delta * 2
print(day_after_tomorrow)
# 2020-06-17 13:35:50.540988
```

> 💡 Check out the *Learn More* section for a playground link where you'll be able to test out this example.


---

## Practice

Complete the following code snippet such that variable `x` will hold a date exactly 2 weeks from today:

```python
from datetime 
import datetime, timedelta

today = ???.today()

delta = ???(???=???)

x = today ??? delta ???
```

- `datetime`
- `timedelta`
- `days`
- `7`
- `+`
- `* 2`
- `weeks`
- `/ 2`
- `14`
- `months`
- `%`
- `date`
- `time`
- `delta`


---

## Revision

Calculate the value of `yesterday`:

```python
from datetime 
import datetime, timedelta

delta = timedelta(???=???)
today = datetime.today()

yesterday = ??? - ???
```

- `hours`
- `24`
- `today`
- `delta`
- `timedelta`
- `days`
- `2`
- `delta % 2`
- `date`
- `time`
- `today / 2`
 
