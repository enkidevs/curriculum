# Deadlock Dynamic Avoidance
author: nickdaminov

levels:

  - medium

type: normal

category: how to

links:

  - '[More on Banker`s Algorithm](https://en.wikipedia.org/wiki/Banker%27s_algorithm)'

---
## Content

A much better approach which allows more concurrency with avoidance of deadlocks is aimed to monitor the system and to decide whether it is or it is not safe to grant the resource on every request. Such can be done by performing *Banker's Algorithm*: all the sates are split to **safe** and **unsafe**. In the beginning it is considered to be a *safe* state as there are no resources taken and only an operating system is running. Whenever there is a process requesting a resource the system assumes that state and figures out if it is safe or not. If the above acquirement leads to a safe state, the resource is granted, otherwise not. To illustrate this lets look at a single type resource: money, and let processes be people taking loans.

In order for a *Banker's Algorithm* to work the system needs to know and an assumption that after a process gets all the necessary resources if executes and frees them:
 - How much of each resource each process could possibly request.
 - How much of each resource each process is currently holding.
 - How much of each resource the system currently has available.

 Consider the following setup:

 A : 2k/9k

 B : 1k/6k

 C : 2k/5k

 D : 1k/7k

 Free : 3k

 This is a free state as we can grant 3k to C, then 5k to B, 6k to D and finally 7k to A so all the precesses do execute.

 On the other hand, this is an unsafe state as B will not be able to run:

 A : 2k/9k
 B : 0k/6k
 C : 2k/5k
 D : 1k/7k
 Free : 3k

This of course can be expanded to multiple resource types.
---
## Practice

Why is this an unsafe state?
 A : 2k/9k
 B : 1k/6k
 C : 2k/5k
 D : 1k/6k
 Free : 3k

???


* A will not run
* B will not run
* C will not run
* D will not run

---
## Revision

How does dynamic avoidance work?

???

* Calculating whether it will be safe to grant a resource to a process on every iteration
* Calculating the overall load an the capacity of the system
* Ensuring that the will always be more resources that the processes
