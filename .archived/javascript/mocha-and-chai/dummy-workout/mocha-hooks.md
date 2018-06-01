---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

links:

  - >-
    [medium.com](https://medium.com/@kanyang/hooks-in-mocha-87cb43baa91c#.bo68b4hal){website}

---
# Mocha Hooks

---
## Content

Mocha provides four hooks, `before()`, `beforeEach()`, `after()` and `afterEach()`.  

They can be used to set test pre-conditions and and to clean up after tests have been completed.

```JavaScript
before(function() {
  // runs before all test cases in the suite
});
beforeEach(function() {
  // runs before each test in the suite
});
after(function() {
  // runs after all test cases in suite
});
afterEach(function() {
  // runs after each test in the suite
});
```

All hooks are created with a description, this makes it easier to single out errors in your test cases. 
```JavaScript
beforeEach("the description goes here",
            function() {
  arr = ['a', 'b', 'c'];
});
```

---
## Practice

Which of the following is not declared properly? ???

```javascript
// Option A
beforeAll(function() {
   x++;
});

// Option B
beforeEach(function() {
   x--;
});

// Option C
after(function() {
   x++;
});
```
* Option A
* Option B
* Option C

---
## Revision

Which of these is not a Mocha hook?
???
* beforeAll()
* beforeEach()
* afterEach()
* before()