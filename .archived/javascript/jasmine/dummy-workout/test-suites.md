---
author: tommarshall

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

tags:

  - testing

links:

  - >-
    [www.webdesignermag.co.uk](http://www.webdesignermag.co.uk/how-good-is-your-javscript-test-with-jasmine/){website}

---
# Test Suites

---
## Content

All tests in Jasmine must be contained within a *suite*. 

A *suite* is used to group tests of related functionality together.

Suites begin with a call to the global Jasmine function *`describe`* that takes two parameters - a title to describe the tests and a function containing the actual tests. 


```JavaScript
describe("boolean tests", function() {
  it("true should equal true",
     function() {
    expect(true).toBe(true);
  });

  it("false should equal false",
     function() {
    expect(false).toBe(false);
  });
});
```

---
## Practice

Complete the snippet to define a test suite:

```
???('practice test suite',
                ???() {
  // ...
});
```
* describe
* function 
* suite
* testsuite
* func
* callback

---
## Revision

How do you define a test suite?
???
* describe('like this...', function() {
* describe(function(), 'like this...' {
* suite('like this...', function() {
* it(' like this...', function() {