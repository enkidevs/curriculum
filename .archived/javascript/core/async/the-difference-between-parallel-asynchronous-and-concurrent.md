---
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

standards:

  javascript.async.3: 10

  javascript.async.2: 10

  javascript.use-modules.2: 10

tags:

  - workout

  - deep

  - async

  - promises

  - npm

aspects:
  - workout
  - introduction
  - obscura
  - deep

links:

  - '[stackoverflow.com](http://stackoverflow.com/questions/1050222/concurrency-vs-parallelism-what-is-the-difference#1050257){website}'
  - '[github.com](https://github.com/getify/You-Dont-Know-JS/blob/master/async%20&%20performance/ch1.md){website}'


---

# The difference between _parallel_, _asynchronous_ and _concurrent_

---
## Content

'**Asynchronous**' describes tasks occurring out of order, i.e. the main program flow can continue **now** and the asynchronous task will complete **later**.

**Parallel** means more than one operation being able to occur at the same point in time. Multiple **threads** can share the same memory of a **process**. They can execute on different processors or computers.

JavaScript is **single-threaded** and so has '**run-to-completion**' behaviour (except in new ES6 syntax such as Generators), meaning that once the code in a function begins executing, it will finish before any other code can be run.

**Concurrency** is when two or more tasks are executing in the same time period, but not necessarily in parallel. 

JavaScript has behaviour, known as a '**race condition**', where two concurrent tasks 'race' to see which runs first. If both alter the same data, there could be a difference in the results each time.

---
## Practice

JavaScript is ??? and therefore has ??? behaviour, this means that once the code in a function starts executing it has to finish before any code can run.


* single-threaded
* run-to-completion
* double-threaded
* not threaded
* run-to-crash
* run-to-memoryfull

---
## Revision

What's the notion describing two or more tasks executed in the same period, but not necessarily in parallel?

???


* `concurrency`
* `parallelism`
* `asynchronous`
* `race condition`

 
 
 
 
