---
author: mihaiberq

levels:

  - basic

type: normal

category: must-know


links:

  - '[chase-seibert.github.io]((Diagnosing memory leaks)[http://chase-seibert.github.io/blog/2013/08/03/diagnosing-memory-leaks-python.html]){website}'


---
## Content
# Memory leaks

A **memory leak** occurs when a program manages *memory allocation* incorrectly: memory no longer needed is not released. Imagine the memory as a horizontal axis, with an application `A` requesting `512MB` of memory:
```bash
      A        B   C
 |

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
