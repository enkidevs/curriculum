---
author: catalin
type: normal
category: how-to
links:
  - >-
    [docs.python.org](https://docs.python.org/3.5/library/calendar.html){website}
notes: |
  Added:


  print(calendar.calendar(2016))

  to show how to print calendar for a year.
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

# Your own Python calendar


---

## Content

The Python `calendar` module defines the `Calendar` class. This is used for various date calculations as well as `TextCalendar` and `HTMLCalendar` classes with their `local` subclasses, used for rendering pre formatted output.

Import the module:

```python
import calendar
```

Print the current month:

```python
import calendar
year = 2016
month = 1
cal = calendar.month(year, month)
print(cal)


```

The output will look like this:

```plain-text
    January 2016
Mo Tu We Th Fr Sa Su
              1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31


```

Set the first day of the week as Sunday:

```python
calendar.setfirstweekday(calendar.SUNDAY)
```

To print a whole year's calendar:

```python
print(calendar.calendar(2016))
```

The output is not shown since it is too large.

This module provides other useful methods for working with dates, times, and calendars, such as `calendar.isleap` (checks if a year is a leap year).


---

## Practice

Set the first day of the week of your `calendar` to be Monday:

```python
calendar.???(calendar.MONDAY)
```

- `setfirstweekday`
- `setweekday`
- `setfirstday`
- `firstweekday`
- `firstday`


---

## Revision

Print the year 2021 using the python calendar:

```python
import calendar
print(calendar.???(2021))
```

- `calendar`
- `year`
- `currentYear`
- `annum`
