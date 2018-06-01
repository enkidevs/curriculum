---
author: Bruno

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/new){documentation}

---
# Correct and incorrect ways of using new

---
## Content

Given the function:

```
function test() {
  this.toto = 1234;
}

```
We can create a `new test` in the following ways:
```
(new test()).toto // OK
new test().toto   // OK
(new test).toto   // OK
```

However, this will not work:

```
new test.toto // BAD!
```

Note how the `new` keyword takes priority over the `.` operator in the case of `new test().toto`.

---
## Practice

Given the following function, which is the incorrect way of using the `new` keyword? ???

```javascript
function enki() {
   this.practiceQ = 1;
}

// Which of the following is incorrect?
(new enki()).practiceQ  // Option A
new enki().practiceQ    // Option B
new enki.practiceQ      // Option C
(new enki).practiceQ    // Option D
```

* Option C
* Option D
* Option A
* Option B

---
## Revision

Given the function, state whether the statements will work:
```javascript
function test() {
  this.enki = 1234;
}

new test().enki // ???
new test.enki // ???
```

* yes
* no