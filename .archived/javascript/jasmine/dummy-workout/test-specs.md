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

A spec is created by calling the global Jasmine function _`it`_.

Like a suite the _`it`_ function takes two parameters, the spec title (_string_) and the spec/test (_function_).

Specs contain at least one _expectation_ which will test the state of the code.

In Jasmine a _expectation_ is an assertion that's either _true_ or _false_.

If all assertions are _true_ then the spec passes, if not then the spec fails the test(s).

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

- it
- expectation
- describe
- assertion
- test
