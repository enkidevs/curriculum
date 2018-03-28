---
author: tommarshall

levels:

  - basic

  - beginner

type: normal

category: must-know

tags:

  - testing

links:

  - '[chaijs.com](http://chaijs.com/api/bdd/){website}'

---
# Mocha Describe and Expectations

---
## Content

`describe` is used when defining a testing suite. It takes two parameters, a string for describing  the suite, and a function with the suites test code. 

The describe function is used to group related test specs together.

```JavaScript
describe('your string parameter here', 
         function() {
  // inside the describe function
  // goes all your testing code
});
```
A test expectation uses the function `expect`, this functions takes a value to use as the actual, and compares this with the expected value.

```JavaScript
describe('using an expectation',
         function() {
  it('the it function holds expectations',
     function() {
     // expectation
     expect(5).to.be.a('number');
  });
});
```

---
## Practice

What are the test results from the following piece of code? ???

```javascript
describe('Practice your testing knowledge',
          function() {
   it('test case', function() {
      expect(12).to.be.a('number');
   });
});
```

* True
* False

---
## Revision

describe is used to define a ? .  It takes ? parameters which are...
???
* test suite, 2, a string and a function.
* function, 2, a string and a function.
* test suite, 3, the expected value, the actual value and a function.
* test suite, 1, a function.