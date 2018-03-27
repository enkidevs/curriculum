---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

tags:

  - testing

links:

  - '[mochajs.org](http://mochajs.org){website}'

---
# Working with Promises

---
## Content

A *promise object* represents an operation which hasn't been completed yet, but is expected to be completed in the future. 

A promise represents a proxy for a value when the promise is created. It lets you associate handlers to an asynchronous action's success value or failure reason.

```JavaScript
var expect = require('chai').expect;
it('should do something with promises', 
    function() {
  var line = 'Enki!';

  // call the function being tested
  var result = testFunction();

  // return the promise
  return result.then(function(data) {
    expect(data).to.equal(expectedData);
  });
});
```

If a promise fails, then using Mocha's built in support for promises, then the test will automatically be returned as failed.

---
## Revision

What is a promise object? ???

* an operation which hasn't currently been completed, but is expected to be completed in the future.
* a promise to add some functionality to a program.
* a function with no body which is yet to be completed.
* a test case with no body which is yet to be completed.