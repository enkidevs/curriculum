---
author: nickdaminov
type: normal
category: must-know
links:
  - >-
    [Dining philosophers
    problem](https://en.wikipedia.org/wiki/Dining_philosophers_problem){website}
  - >-
    [Deadlock
    examples](https://stackoverflow.com/questions/34512/what-is-a-deadlock){website}
  - >-
    [More on Deadlock
    conditions](http://wikieducator.org/Necessary_conditions_for_deadlock){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deadlocks


---

## Content

**Deadlock** is a situation in which two or more processes/threads are accessing same resources in a mutually exclusive fashion.

A simple example:

```plain-text
Thread1:
1: acquire(lock1);//takes locks
2: acquire(lock2);
3: doSomething(); //we need both locks
4: release(lock2);//releases locks
5: release(lock1);
```

```plain-text
Thread2:
1: acquire(lock2);//takes locks
2: acquire(lock1);
3: doSomething(); //we need both locks
4: release(lock1);//releases locks
5: release(lock2);
```

If we consider a situation in which `Thread1` acquires `lock1` and then `Thread2` acquires `lock2` (this can happen as these actions are not synchronized), then we end up in a **deadlock** situation as none of the two threads can proceed further.

**Deadlock** is not limited to two threads only, for example *dining philosophers* problem.


---

## Practice

What lines in `Thread2` should we swap to avoid a *deadlock* situation?

???

- lines 2 & 1
- lines 4 & 5
- lines 3 & 2


---

## Revision

What is a *deadlock*?

???

- A situation in which processes fail to acquire resources due to mutual exclusion
- A situation in which a process does not free it's resources after execution
- A situation when all resources are acquired by the processes
