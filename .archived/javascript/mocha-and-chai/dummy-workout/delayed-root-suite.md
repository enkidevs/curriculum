---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - testing

links:

  - '[mochajs.org](http://mochajs.org/#hooks){website}'

---
# Delayed Root Suite

---
## Content

*Mocha* allows you to carry out asynchronous operations before your tests suites are run by *delaying the root suite*. 

Running *Mocha* with the `--delay` flag provides you with a function `run()` in the global context.

```JavaScript
setTimeout(function() {
  // set up any test suite pre-conditions
  // here whilst the root suite's delayed

  describe('add tests inside the describe', 
            function() {
  });

  // use the --delay flag to access
  // the run function
  run();
}, 5000);
```

---
## Practice

What function does the `--delay` flag give you access to? ???

* run();
* callback();
* execute();
* compile();

---
## Revision

What flag must be *Mocha* run with to be provided with `run()` function in the global context?

???

* --delay
* --delay-root
* --async
* --run