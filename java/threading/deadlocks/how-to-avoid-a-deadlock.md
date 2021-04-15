---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [Ostrich
    Algorithm](https://en.wikipedia.org/wiki/Ostrich_algorithm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How to Avoid a Deadlock


---

## Content

There are 4 necessary and sufficient conditions for a **deadlock** to occur:

- Mutual Exclusion: only one process at a time can use the resource.
- Hold and Wait: process that is holding a resource can acquire further resources.
- No Preemption: resources are only freed after a process has finished executing.
- Circular Wait: there are at least two processes each waiting for each others resources.

The four main strategies on how to tackle *deadlocks* are:

- "Ostrich Algorithm" i.e. do nothing and hope that deadlocks never occur and if they happen kill processes one by one or reboot the system.
- Deadlock Detection and Recovery i.e. after system happened to be deadlocked we detect it and fix the issue.
- Deadlock Prevention i.e. ensure that at least one of the sufficient conditions for a deadlock does not hold.
- Deadlock Avoidance i.e. whenever a process/thread tries to acquire a resource the system decides whether it is safe to grant that resource or not.

The latter three will be discussed in detail in the next insights.


---

## Practice

What condition is not necessary for a deadlock to occur?

???

- none of the options listed
- only one process at a time can use the resource
- process that is holding a resource can acquire further resources
- resources are only freed after a process has finished executing
- at least two processes each waiting for each others resources


---

## Revision

What is "Ostrich Algorithm"?

???

- Ignoring deadlock problem
- Solving a deadlock by running a an ostrich class
- Running an ostrich thread in a process-resource cycle
