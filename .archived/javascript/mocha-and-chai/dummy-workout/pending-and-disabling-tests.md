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

  - '[jaketrent.com](http://jaketrent.com/post/run-single-mocha-test/){website}'

  - '[mochajs.org](http://mochajs.org/#hooks){website}'

---
# Pending and Disabling Tests

---
## Content

A *pending test* in Mocha is a test which has no callback. Pending tests are test cases which are yet to be fully written. 

```
describe('pending tests', function() {
  it('this test is pending');
});
```

You can tell *Mocha* to run a single suite or a single test using `.only()`.

```JavaScript
describe.only('only this suite will run',
               function(){
  it.only('only this test will run',
          function(){
    // test code here
  });
  it('this will be skipped', function(){
    // test code here
  });
});
```
You can also tell *Mocha* to skip suites or tests using `.skip()`.
```JavaScript
describe.skip('this suite will be skipped',
               function(){
  it.skip('this it will be skipped',
           function(){
    // test code here
  });
});
```

---
## Practice

Which of the following tests will run? ???

```javascript
describe.skip('Mocha?', function() {
   it.only('Test 1', function(){
      // Test code here
   });

   it.skip('Test 2', function(){
      // Test code here
   });
});

describe('Chai?', function() {
   it.skip('Test 3', function(){
      // Test code here
   });

   it.only('Test 4', function(){
      // Test code here
   });

   it('Test 5');
});
```

* Test 4 only.
* Test 2 and Test 4.
* Test 1 and Test 4.
* Test 3 and Test 4.
* Test 2 only.
* Test 4 and Test 5.
* Test 2 and Test 5.

---
## Revision

A pending test in Mocha is...
???
* a test with no callback.
* a test which fails.
* a test with no function declaration.
* a test with no string parameter.