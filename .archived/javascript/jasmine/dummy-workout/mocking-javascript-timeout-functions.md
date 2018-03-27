---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - testing

links:

  - '[jasmine.github.io](http://jasmine.github.io/2.0/introduction.html){website}'

---
# Mocking JavaScript Timeout functions

---
## Content

Jasmine's clock gives test suites the ability to implement `setTimeout` and `setInterval` callbacks. 

Timer callbacks are synchronous, functions are executed once the clock has moved forwards in time.

`jasmine.clock().tick(x)` takes x amount of milliseconds.

```
describe("example using the jasmine clock",
function() {
  var timer;
  beforeEach(function() {
    timer = jasmine.createSpy("timer");
    jasmine.clock().install();
  });
  afterEach(function() {
    jasmine.clock().uninstall();
  });
  it("causes a timeout to be called \
      synchronously", function() {
    setTimeout(function() {
      timer();
    }, 10000);
    // clock yet to tick seconds
    expect(timer).not.
          toHaveBeenCalled();
    // clock ticks 11 seconds
    jasmine.clock().tick(11000);
    // timer called at 10 seconds
    expect(timer).
          toHaveBeenCalled();
  });
}
```

---
## Practice

What test results will the following piece of code produce? ???

```javascript
setTimeout(function() {
   timer();
}, 8000);

// Test 1
expect(timer).not.toHaveBeenCalled();
jasmine.clock().tick(1000);

// Test 2
expect(timer).toHaveBeenCalled();
jasmine.clock().tick(8000);

// Test 3
expect(timer).toHaveBeenCalled()

```

* Test 1: *True*, Test 2: *False*, Test 3: *True*
* Test 1: *False*, Test 2: *True*, Test 3: *False*
* Test 1: *False*, Test 2: *False*, Test 3: *False*
* Test 1: *True*, Test 2: *True*, Test 3: *True*

---
## Revision

Are timer callbacks synchronous or asynchronous?

???

* synchronous
* asynchronous