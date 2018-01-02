# Iterator Usages
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

---
## Content

Of course, iterators can work with any sequence of items you want so you could use iterator for: 

* More efficient resource and memory usage as values are computed on demand and not held in memory
* Mathematical sequences of numbers e.g. the classic example is Fibonacci numbers
* Records from the database
* Infinite sequences (remember to never return done as true!)
* Generate sequences of id's
* As a state machine, e.g. you might have different discount levels for a customer and could move from new customer to regular to VIP

It's a fair amount of code to create even a simple iterator. ES6 offers another way that is usually a better option for most scenarios called **Generators** which we will look at next.
