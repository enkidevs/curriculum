# Keep to the scope!
author: rosielowther

levels:

  - beginner

  - basic

  - medium

type: evaluateThis

category: must-know

---
## Content

Do you know how scoping works in Javascript?

---
## Game Content

```
function func() {
  if (true) {
    var a = 'hello';
  }
  console.log(a);
}
```
* `'hello'`
* `a`
* `undefined`
---

```
function func() {
  if (true) {
    let a = 'hello';
  }
  console.log(a);
}
```
* `Reference Error`
* `undefined`
* `'hello'`

---

```
function func() {
  let a = 'hello';
  if (true) {
    let a = 'goodbye';
  }
  console.log(a);
}
```
* `'hello'`
* `'goodbye'`
* `undefined`
---

```
function func() {
  let a = 'hello';
  if (true) {
    let a = 'goodbye';
    console.log(a);
  }
}
```
* `'goodbye'`
* `'hello'`
* `undefined`
---

```
function func() {
  if (false) {
    var a = 'goodbye';
  }
  console.log(a);
}
```
* `undefined`
* `'goodbye'`
* `Reference Error`
---

```
function func() {
  var a = 'hello';
}
console.log(a);
```
* `Reference Error`
* `'goodbye'`
* `'hello'`
