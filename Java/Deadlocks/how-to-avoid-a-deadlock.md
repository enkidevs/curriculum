# How to Avoid a Deadlock
author: nickdaminov

levels:

  - medium

type: normal

category: how to

links:

  - '[Ostrich Algorithm](https://en.wikipedia.org/wiki/Ostrich_algorithm)'

---
## Content

The four main strategies on how to tackle *deadlocks* are:

- "Ostrich Algorithm" i.e. do nothing and hope that deadlocks never occur and if they happen kill processes one by one or reboot the system.
- Deadlock Detection and Recovery i.e. after system happened to be deadlocked we detect it and fix the issue.
- Deadlock Prevention i.e. ensure that at least one of the sufficient conditions for a deadlock does not hold.
- Deadlock Avoidance i.e. whenever a process/thread tries to acquire a resource the system decides whether it is safe to grant that resource or not.

---
## Practice

---
## Revision
