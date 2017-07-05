# Monitors
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[More on Monitors](https://stackoverflow.com/questions/7335950/semaphore-vs-monitors-whats-the-difference)'

---
## Content

Unlike the two previous patters **monitors** are higher class synchronization mechanisms. **Monitor** functionality can be accessed by multiple threads.

We can think of a **monitor** as being is a class instance which methods are mutually exclusive so that only one thread can execute a particular method at a time. **Monitors** make use of lower class synchronization patterns such as *locks* and *semaphores* in order to achieve this functionality.

---
## Practice

What is the highest class synchronization pattern?

???

* Monitor
* Lock
* Mutex
* Semaphore

---
## Revision

What is a monitor?

???

* A high class structure that provides synchronized functionality accessible by many threads
* A pattern that allows multiple threads to use certain functionality at a single time
* A piece of hardware used to display information from a computer to the user (joking)
