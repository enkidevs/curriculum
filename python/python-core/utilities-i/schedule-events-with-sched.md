---
author: catalin
type: normal
category: how-to
links:
  - '[docs.python.org](https://docs.python.org/3.5/library/sched.html){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Schedule events with sched


---

## Content

Another useful **Python** module is `sched`, and it's used for general-purpose event scheduling.

Import the module:

```python
import sched
import time # we will use this
```

Every operation is done with the help of a `scheduler` class that needs two-time functions. The first one to determine the current time and the second to wait for a specific period of time. (e.g. `time.time` and `time.sleep`)

```python
s = sched.scheduler(time.time, time.sleep)
```

Since **Python 3.3** the `scheduler` class is safe for multi-threading.

We can schedule a task with `enter`:

```python
s.enter(2, 1, print, argument=('first',))
s.enter(3, 1, print, argument=('second',))
# first arg is delay, second is priority
# third is the action and the last is
# the arguments of the action
```

Then we run our scheduler:

```python
s.run()
```

`first` is printed after 2 seconds, and the `second` after 3 seconds.


---

## Practice

Create a new scheduler and set it to enter `print('second')` with priority = 1 and delay = 4.

```python
import sched
import time

sc=???.scheduler(time.???,time.???)

sc.enter(???,???,print,???)
sc.run()
```

- sched
- time
- sleep
- 4
- 1
- argument=('second',)
- sc


---

## Revision

Given the scheduler code:

```python
sched.enter(3,2,print,argument=('second',))
```
What is the priority, and what is the delay?
```python
# Priority ???
# Delay ???
```

- 2
- 3
- second
- first
