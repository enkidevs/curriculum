---
author: mihaiberq

levels:

  - basic

type: normal

category: must-know
aspects:
  - workout
  - deep
standards:
  python.store-manipulate-data.5: 10

links:

  - '[chase-seibert.github.io]((Diagnosing memory leaks)[http://chase-seibert.github.io/blog/2013/08/03/diagnosing-memory-leaks-python.html]){website}'


---

# Memory leaks

---
## Content

A **memory leak** occurs when a program manages *memory allocation* incorrectly: memory no longer needed is not released. Imagine the memory as a horizontal axis, with an application `A` requesting `512MB` of memory:
```bash
      A        B   C
 |=========| |===||=|
 |=========|========| # available memory
0MB      512MB    1024MB
```
Instead of reusing memory already allocated , the program requests more and more memory, hence eating up memory other background programs/processes might be using. This can slow the whole system down due to *thrashing*[1] making the OS to force kill `A` to free up memory.

You can usually assume your Python application has a memory leak if its memory usage grows steadily over time. This is not necessarily a reason for concern, as there are a number of tools that can help you identify and solve the problem. To name a few:
- Python's debugger, `pdb`
- memory monitors and analyzers, `pympler` and `memory_profiler`
- a module that shows the potential leaking cause, `mem_top`

There's no generic way to deal with memory leaks, it's more case-specific. Usually, once you've found the leak, fixing it is one Google search away.

---
## Practice

What is a common sign of a memory leak in your python program?

???

* if its memory usage grows steadily over time
* if you get a compile time error
* if you get a run time error


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
**Paging** is a process in which, to run a process/program, the system requests **pages** (block of bytes) from the slow physical memory to be stored in the much faster random-access memory (RAM). This happens mostly on running processes/programs to improve performance

**Thrashing** is the phenomenon during which multiple processes require *pages* that are not available in RAM, over and over again. The RAM is limited and in case a process requires too much memory (a memory-leaking one, for instance), the free RAM, as well as the number of maximum pages that would be available for the system to use decreases.
