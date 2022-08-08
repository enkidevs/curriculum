---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: must-know

links:
  - >-
    [Hyper-Threading Technology](https://en.wikipedia.org/wiki/Simultaneous_multithreading#:~:text=The%20Intel%20Pentium%204%20was,a%20number%20of%20their%20processors.){website}
---

# Threads and GIL

---

## Content

Threads are used when you want to execute multiple tasks within the same program, at once.

> Although it appears you have multiple things working at once, for Python 3, threads will still execute one at a time, just at a really fast rate, appearing as if they happen simultaneously.

The reason behind it is the Python Global Interpreter Lock, or `GIL`. 

`GIL` is a mutex that protects access to Python objects. A mutex is a sort of gate keeper. It allows only one thread to use a specific piece of code at a time. 

If a thread starts using some code, the `GIL` will lock that code to that thread until it has finished using it.

The reason behind this, is that Python is written in `C`, which is called `CPython`.

And the reason `CPython` has `GIL` is because its memory management is not **thread-safe**.

Prior to modern computing, when it was first created, processes had only 1 thread.

`CPython` was first published in 1991. Whereas the first modern desktop multi-threaded procesor was published in 2002.

> Even though the `GIL` still exists, there are multiple ways you can work around it to allow `multiprocessing`.

> Let's create a thread in the next insight.
