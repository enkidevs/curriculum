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

  - >-
    [jasmine.github.io](http://jasmine.github.io/2.0/custom_matcher.html){website}

---
# Test Matchers

---
## Content

A Jasmine matcher does a *boolean comparison* between an expected value and an actual value. Matchers report to Jasmine whether an expectation is true or false, this allowing Jasmine to pass or fail a spec.

```JavaScript
describe("Jasmine matchers", function() {
  it("'toBe' and 'not.toBe'", function() {
      var x = 31;
      var y = x;
      expect(x).toBe(y);
      expect(y).not.toBe(null);
  });
```

Jasmine has a large set of matchers including:
- toEqual
- toMatch
- toBeDefined
- toBeUndefined

---
## Practice

What will the following test results be? ???

```javascript
it("practice testing", function() {
   var x = 7;
   var y = x;

   expect(x).not.toBe(y);
   expect(x).toBe(y);
   expect(y).toBe(null);
});
```

* False, True, False
* False, False, True
* True, False, False
* True, True, False

---
## Revision

Which of these is not a Jasmine matcher?
???
* toBeBoolean
* toEqual
* toBeUndefined
* toBe