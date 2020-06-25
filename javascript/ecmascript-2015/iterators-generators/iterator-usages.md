---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols){website}'

---
# Iterator Usages

---
## Content

Of course, iterators can work with any sequence of items you want so you could use iterator for:

* More efficient resource and memory usage as values are computed on demand and not held in memory
* Mathematical sequences of numbers e.g. the classic example is Fibonacci numbers
* Records from the database
* Infinite sequences (remember to never return done as true!)
* Generate sequences of id's
* As a state machine, e.g. you might have different discount levels for a customer and could move from new customer to regular to VIP

It's a fair amount of code to create even a simple iterator. JavaScript offers another way that is usually a better option for most scenarios called `Generators` which we will look at next.

---
## Practice

Can an iterator work with any sequence of items?

???

* Yes
* Only objects
* All apart from strings
* Only numbers

---
## Revision

Can an iterator be used to implement an infinite sequence?

???

* Yes, by never returning `done` as `true`
* No, because an iterator must always have `done` equal to `true` at some point
* No, because the memory needed will kill any machine
* Yes, by making the `next` function recursive
 
