---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [More on Detection and
    Recovery](http://ecomputernotes.com/database-system/rdbms/deadlock-detect-and-recover){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Detection and Recovery


---

## Content

Whenever a deadlock has occurred in the system, we can build a graph of process-resource dependencies.

One of the necessary conditions for a deadlock is a *circular wait*, i.e. somewhere in this graph there will be a cycle of process-resource dependency which is the cause of the deadlock.

There are three ways to deal with this problem:

- Randomly kill processes in a cycle one by one and check for a deadlock after each iteration.
- Take a resource from one process in a cycle and grant it to another one.
- Constantly take images of the system (process-resource) and if a deadlock occurred roll back to a closest safe state.


---

## Revision

What is the key to resolving a deadlock once it occurred?

???

- Break the cycle of process-resource dependency
- Kill all processes in the system
- Roll the system back to a boot state
