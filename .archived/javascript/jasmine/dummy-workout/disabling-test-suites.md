---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: must-know

tags:

  - testing

parent: test-suites

links:

  - >-
    [www.safaribooksonline.com](https://www.safaribooksonline.com/library/view/javascript-testing-with/9781449356729/_skipping_specs_and_suites.html){website}

---
# Disabling Test Suites

---
## Content

You can disable a *test suite* in Jasmine by changing `describe` to `xdescribe`. 

When Jasmine encounters `xdescribe` it will skip over the suite and specifications contained within and these will not contribute to the test execution count.

`xdescribe` is useful during development or perhaps during a large refactor to temporarily disable a test suite.

```JavaScript
xdescribe("A disabled suite", function() {
  it("wont be run", function() {
    expect(true).toEqual(true);
  });
});
```