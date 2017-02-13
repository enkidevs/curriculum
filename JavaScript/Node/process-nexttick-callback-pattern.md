# `process.nextTick()` callback pattern
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

---
## Content

*Event loop* can be viewed as a queue of callbacks that are processed by **Node** on consequent **ticks**.

`process.nextTick()` basically defers the execution of an action until the next tick of the *Event Loop*.

Basic behaviour of `process.nextTick()` can be achieved with ` setTimeout(fn,0)`, yet the former provide better performance.

Its usage proves useful when you want to interleave the execution of a **CPU** intensive task with other events.
```javascript
function compute() {
    // complicated calculations    
    process.nextTick(compute);}
//other events
compute();
```
Here, the execution of `compute()` will be reserved for the next tick of the event loop, after other events are queued in it.

`process.nextTick()` is also used to keep callbacks truly asynchronous:
```javascript
function asyncFn(data, callback) {
    process.nextTick(function() {
        //callback value logic
  });
}
```

It is also used before emitting an event to provide correct functionality.

---
## Practice

Complete the code snippet below which allows the execution of a CPU intensive task to be interleaved with other events:

```javascript
function compute() {
   // lots of calculations...
   process.???(???);
}
compute();
```

* `nextTick`
* `compute`
* `nextProcess`
* `computation`
* `calc`
* `event`

---
## Revision

What can be used to replicate the basic behaviour of `setTimeout(fn, 0)`?

???

*`process.nextTick()`
*`process.next()`
*`process.nextTick(0)`
