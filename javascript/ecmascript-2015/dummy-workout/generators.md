---
author: rosielowther

levels:

  - medium

type: normal

category: feature

links:

  - '[www.2ality.com](http://www.2ality.com/2015/03/es6-generators.html){website}'
  
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){website}'

---
# Generators

---
## Content

Generators are functions that can be paused and resumed at a `yield` point.

Generators can play three roles:

**Iterators**: generators can return a value via `next()` at each yield point to produce a sequence of values (an iterable).

**Observers**: generators can pause at a yield point until a new value is pushed to them via `next()`.

**Coroutines**: the dual data producing and consuming properties of generators can be combined into a multitasking routine.

There are various ways of creating a generator, for example by a generator function declaration:
```
function* genFunc() { ··· }
let genObj = genFunc();
```
Note the `*` that indicates `genFunc()` is a generator.

---
## Practice

Create a generator using generator function declaration:

```
??? generator() { ··· } 
let genObj = ???(); 
```
* function*
* generator
* function
* func
* newgenerator`
* new

---
## Revision

What syntax is used to pause and resume a *generator function* ?

???

* yield
* next()
* pause
* stop
* getFunc()
* *
 
