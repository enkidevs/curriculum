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

  - >-
    [www.safaribooksonline.com](https://www.safaribooksonline.com/library/view/javascript-testing-with/9781449356729/_skipping_specs_and_suites.html){website}

---
# Pending Test Specs

---
## Content

Any Jasmine spec that is declared as *pending* will not run, their name will simply be shown in any test results as pending.

To declare a spec as pending, you can use the `xit` function (instead of the usual `it`). 

A spec is also pending when it is declared without a function body. Both specs in the following suite can be deemed pending.

```JavaScript
describe("Example of pending specs", () => {
  xit("this spec is pending", () => {
    expect(true).not.toBeEqual(false);
  }
  it("a spec with no function body") 
}
```

---
## Practice

Which of the following specs is not declared as pending? 

```javascript
it("This is Spec A");

xit("This is Spec B", () => {
   expect(false).toBeEqual(false);
});

it("This is Spec C", () => {
   expect(true).not.toBeEqual(true);
});
```
???
* Option C
* Option B
* Option A

---
## Revision

How do you declare a spec as pending?
???
* xit
* pit
* pend_it
* sit