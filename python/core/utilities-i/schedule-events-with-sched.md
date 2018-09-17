---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to
aspects:
  - introduction
  - workout
standards:
  python.control-structures.5: 10
  python.modules.0: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/sched.html){website}'


---

# Schedule events with `sched`

---
## Content

Another useful **Python** module is `sched` and it's used for general purpose event scheduling.

Import the module:
```python
import sched
import time # we will use this
```

Every operation is done with the help of a `scheduler` class that needs two time functions. The first one to determine the current time and the second to wait for a specific period of time. (e.g. `time.time` and `time.sleep`)
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
`first` is printed after 2 seconds while `second` is printed after 3 seconds.

---
## Practice

Create a new schedule and set it to enter second with priority = 1 and delay = 4.

```python

import sched
import time

start = '2018-03-23 21:55:19.629694'
stop = '2018-03-24 21:55:19.629694'
sc=???.scheduler(???.start,???.stop)

sc.enter(???,???,print,???)
```

* sched
* time
* time
* 4
* 1
* argument=('second')
* sc


---

## Revision

What is the priority ??? and what is the delay ??? of the following scheduler:

```python

sched.enter(3,2,print,argument=('second'))
```

* 2
* 3
* second
* first
