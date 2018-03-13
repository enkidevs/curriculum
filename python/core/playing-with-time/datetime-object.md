---
author: catalin

levels:

  - basic

  - medium

type: normal

category: feature

inAlgoPool: false


links:

  - '[docs.python.org](https://docs.python.org/3.5/library/datetime.html#datetime-objects){website}'

parent: time-object

---

# `datetime` object

---
## Content

The `datetime` class combines in a single object all the information contained by both previously discussed `date` and `time` classes.

As a consequence, the `datetime` object is **aware** - recording a specific point in time that is not open to interpretations.

Here's the constructor syntax of this object (keep in mind that only **year**, **month** and **day** attributes are mandatory):
```py
datetime(year, month, day, hour, minute,
  second, microsecond, tzinfo)
```

To get the **current datetime** you can use the `today()` method[1]:
```py
from datetime import datetime
print(datetime.today())
# 2017-06-27 15:39:39.934414
```

You can also `combine` a `date` and `time` object into a `datetime` as follows:
```py
from datetime import date, time, datetime
d = date(1993, 11, 1)
t = time(hour = 30)
dt = datetime.combine(d, t)
print(dt) # 1993-11-01 00:30:00
```

The objects exposed by the `datetime` module can be compared naturally with the standard operators to determine which is earlier or later.
```py
time_1 = time(12) # 12:00:00
time_2 = time(13,30) # 13:30:00
print(time_1 < time_2) # True

dt_1 = datetime(2017, 06, 01, 0, 30)
# 2017-06-01 00:30:00
dt_2 = datetime(2017, 07, 02, 12)
# 2017-07-02 12:00:00
print(dt_2 > dt_1) # True
```

As seen above, the string representation of the `datetime` object follows **ISO 8601** format - `YYYY-MM-DDTHH:MM:SS.mmmmmm`. However, outputting in a different format[2] is easily done via `strftime()` method.
```py

today = datetime.today()

# standard
print(today)
# 2017-06-28 12:46:33.950346

format = '%d %a %b %Y %H:%M:%S'
# formatted
print(today.strftime(format))
# 28 Wed Jun 2017 12:46:33
```

---
## Footnotes
[1:Current datetime]
Another way of getting the current time is via the `.now()` method. The difference between the two approaches is that `now()` can take an optional `tzinfo` (**timezone information**) argument.

Since `tzinfo` is an *abstract base class*, you need to define a subclass and provide appropriate implementations for a few methods to make it useful. Unfortunately, `datetime` does not include ready-to-use implementations for this.

However, with now arguments passed, both functions behave the same:
```py
from datetime import datetime
print(datetime.today())
# 2017-06-27 15:39:39.934414
print(datetime.now())
# 2017-06-27 15:39:39.934485

# note the difference in microseconds
```

[2:Date formats]

Here are few special date formatting characters supported by the method:
- `%Y`: year number (e.g. `2017`)
- `%B`: month name (e.g. `July`)
- `%b`: month abbreviation (e.g. `Jan`)
- `%d`: day of month (e.g. `30`)
- `%w`: weekday number (e.g. `0` - Sunday, `1` - Monday)
- `%a`: weekday abbreviation (e.g. `Mon`)
- `%H`: hour 24hr format (e.g. `23`)
- `%M`: minute (e.g. `20`)
- `%S`: second (e.g `57`)

The full list is actually the one implemented by **C standard** (1989 version)
