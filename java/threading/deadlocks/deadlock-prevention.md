---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [More on Deadlock
    Prevention](https://en.wikipedia.org/wiki/Deadlock_prevention_algorithms){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deadlock Prevention


---

## Content

In order to prevent a deadlock we must avoid at least one of the necessary conditions for it. Such can be:

- Resource sharing i.e. more than one process can acquire the resources.
- Processes should state which resources they require before execution.
- Processes that hold a resource are allowed to free it before finishing execution.
- Avoid process-resource cycles by allowing processes to require no more than one resource.

Another solution could be to have a *master* lock which would be acquired by every process before running which would exclude any opportunity for a deadlock situation.

Unfortunately none of them are perfect and they probably conflict with the whole idea of concurrency, a better solution will be discussed in the next insight.


---

## Revision

What is the concept of deadlock prevention?

???

What is a *master* lock?

???

- The key is to prevent a deadlock situation is to avoid one of the conditions necessary for it
- A general single lock which which is required by every process in order to run
- Hope it will not occur
- It is a lock that is acquired by a master process
