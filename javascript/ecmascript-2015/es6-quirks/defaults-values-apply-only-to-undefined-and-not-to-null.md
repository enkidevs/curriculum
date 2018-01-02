# Defaults values apply only to `undefined` (and not to `null`)
author: Bruno

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

tags:

  - es6

  - caveat

---
## Content

ES6 defaults values in function parameters and object deconstructions work as expected when given `undefined`.


```
function foo(a = 1) {return a}
// foo(undefined) === 1
function bar(a = 1) {return a + 1}
// bar(undefined) === 2
const {a = 1} = {a: undefined}
// a === 1
```

This is however not the case for `null`.
```
function foo(a = 1) {return a}
// foo(null) === null
function bar(a = 1) {return a + 1}
// bar(null) === 1
const {a = 1} = {a: null}
// a === null
```

---
## Practice

What is **a** strictly equal to?
```
const {a = 1} = {a: undefined}
// a === ???
```
* `1`
* `0`
* `null`
* `undefined`
* `NaN`

---
## Revision

```javascript
function bar(a = 1) {return a}
//foo(null) === null
const {a = 1} = {a: null}
// a === ???
```

* `null`
* `undefined`
* `1`

---
## Quiz

headline: can you handle optional arguments in ES6?

question: |
 // given:
 function foo(x = 3) { return x + 4 }
 // evaluate:
 foo(null)

answers:
  - 4
  - null
  - 7
  - NaN
