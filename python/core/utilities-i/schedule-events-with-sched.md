# Schedule events with `sched`
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to

standards:
  py.control-structures.5: 10
  py.modules.0: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/sched.html){website}'

---
## Content

Another useful **Python** module is `sched` and it's used for general purpose event scheduling.

Import the module:
```python
import sched
import time # we will use this
```

Every operation is done with the help of a `scheduler` class that needs two time functions, the first to determine the current time and the second to wait for a specific period of time. (e.g. `time.time` and `time.sleep`)
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
