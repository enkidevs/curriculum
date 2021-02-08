---
author: nickdaminov
type: normal
category: how-to
links:
  - >-
    [More on Banker`s
    Algorithm](https://en.wikipedia.org/wiki/Banker%27s_algorithm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deadlock Dynamic Avoidance


---

## Content

A much better approach which allows more concurrency with avoidance of deadlocks is aimed to monitor the system and to decide whether it is or it is not safe to grant the resource on every request. Such can be done by performing *Banker's Algorithm*: all the states are split to **safe** and **unsafe**.

In the beginning it is considered to be a *safe* state as there are no resources taken and only an operating system is running. Whenever there is a process requesting a resource the system assumes that state and figures out if it is safe or not.

If the above acquirement leads to a safe state, the resource is granted, otherwise not. To illustrate this let's look at a single type resource, unit, and let processes be letters A to C requesting those units (just like people taking loans).

In order for a *Banker's Algorithm* to work the system needs to know (we also assume that after a process gets all the necessary units if executes and returns them):

- How much of each resource each process could possibly request.
- How much of each resource each process is currently holding.
- How much of each resource the system currently has available.

Consider the following setup:

A : holds 2 / needs 9

B : holds 1 / needs 6

C : holds 2 / needs 5

D : holds 1 / needs 7

Free : 3

This is a free state as we can grant 3 units to C, get 5 back, then 5 units to B, get 6 back, 6 to D and finally 7 to A so all the precesses do execute.

On the other hand, this is an unsafe state as B will not be able to execute:

A : holds 2 / needs 9

B : holds 0 / needs 6

C : holds 2 / needs 5

D : holds 1 / needs 7

Free : 3

This of course can be expanded to multiple resource types.


---

## Practice

Why is this an unsafe state?

```plain-text
A : 2k/10k

B : 1k / 6k

C : 2k / 5k

D : 1k / 6k

Free : 3k
```

???

- A will not run
- B will not run
- C will not run
- D will not run


---

## Revision

How does dynamic avoidance work?

???

- Calculating whether it will be safe to grant a resource to a process on every iteration
- Calculating the overall load an the capacity of the system
- Ensuring that the will always be more resources that the processes
