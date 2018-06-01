---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

links:

  - '[mochajs.org](http://mochajs.org/#synchronous-code){website}'

---
# Asynchronous Code

---
## Content

To test *`asynchronous code`* with *Mocha* you simply add in a callback function, often called `done()`. This callback function is passed into the *it function* as a parameter.

Prior to the `done()` function being called Mocha will not continue to the following tests, then once it has been invoked Mocha will continue on to the next test to run.

```JavaScript
describe('testing asynchronous code', 
          function() {
  it('requires a callback function',   
      function(done) {
    usingCallbacks(function(param) {
      param.should.equal('Enki!');
      done();  
    });
  });
});
```
The above example shows a `done()` callback function being passed into the *it* function, a *should* assertion is carried out, and the `done()` method is called to allow Mocha to continue to the next test.

---
## Practice

Which of these it functions is declared with the callback function properly? ???

```javascript

it('Option A test case', done() {

it('Option B test case', function(done) {

it('Option C test case', function(done()) {
```

* Option B
* Option C
* Option A

---
## Revision

You need a ??? function to test asynchronous code, it is often named ???. 
* callback
* done()
* finished
* executed
* call()
* exec()
* async()