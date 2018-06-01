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
    [www.htmlgoodies.com](http://www.htmlgoodies.com/beyond/javascript/js-ref/testing-dom-events-using-jquery-and-jasmine-2.0.html){website}

---
# Test Specs

---
## Content

A spec is created by calling the global Jasmine function *`it`*. 

Like a suite the *`it`* function takes two parameters, the spec title (*string*) and the spec/test (*function*).

Specs contain at least one *expectation* which will test the state of the code. 

In Jasmine a *expectation* is an assertion that's either *true* or *false*.

If all assertions are *true* then the spec passes, if not then the spec fails the test(s).

```JavaScript
describe("Suites contain specs", 
   function() {
      it("true should equal true", 
         function() {
             expect(true).toBe(true);
         });
   }
);
```

---
## Practice

In Jasmine, specs are created using the ??? keyword, and once created all specs must contain at least one ???.

* it
* expectation
* describe
* assertion
* test