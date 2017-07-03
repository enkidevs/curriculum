# Memory leaks
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

links:
    - '(Diagnosing memory leaks)[http://chase-seibert.github.io/blog/2013/08/03/diagnosing-memory-leaks-python.html]'

---
## Content

A **memory leak** occurs when a program manages *memory allocation* incorrectly: memory no longer needed is not released. Imagine the memory as an horizontal axis, with an application `A` requesting `512MB` of memory:
```bash
      A        B   C
 |---------| |---||-|
 |---------|--------| # available memory
0MB      512MB    1024MB
```
In the case of memory leaks, instead of reusing the already allocated memory, the program ends up requesting more and more memory, until it eats up memory other background programs/processes might be using. This may slow the whole system down due to *thrashing*[1] and it may force the OS to force kill `A` to free up memory.

You can usually assume your Python application has a memory leak if its memory usage grows steadily over time. This is not necessarily a reason for concern, as there are a number of tools that can help you identify and solve the problem. To name a few:
- Python's debugger, `pdb`
- memory monitors and analyzers, `pympler` and `memory_profiler`
- a module that shows the potential leaking cause, `mem_top`

There's not much of a generic way of dealing with memory leaks, but rather case-specific. Usually, once you've found the leak, fixing it is one Google search away.


---
## Revision

A memory usually leak occurs when

???

* memory not used anymore is not released
* memory usage grows steadily over time
* there's a key logger
* system slows down


---
## Footnotes

[1: Thrashing]
**Paging** is a process in which, to run a process/program, the system requests **pages** (block of bytes) from the slow physical memory to be stored in the much faster random-access memory (RAM). This is mostly happening for on running processes/programs to speed them up.

**Thrashing** is the phenomenon during which multiple processes require *pages* that are not available in RAM, over and over again. The RAM is limited and in case a processes requires too much memory (a memory-leaking one, for instance), the free RAM, as well as the number of maximum pages that would be available for the system to use decreases.
