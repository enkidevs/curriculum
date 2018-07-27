---
author: rosielowther

levels:

  - beginner

  - basic

  - medium

type: evaluateThis

category: must-know

---
# Keep to the scope!

---
## Content

Do you know how scoping works in Javascript?

---
## Game Content

```javascript
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

%exp
Var is scoped to the nearest function block, which means `a` is still `hello`.
%

---

```javascript
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

%exp
`let` is scoped to the nearest enclosing block, which means a is out of scope when printed.
%

---

```javascript
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
%exp
`let` is scoped to the nearest enclosing block. So the value assigned to `a` before the if is the value that will be printed.
%

---

```javascript
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

%exp
`let` is scoped to the first enclosing block, so the initial value of `a` is overwritten.
%
---

```javascript
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

%exp
Even though `var`’s scope is extended to the nearest enclosing function, the `if` condition is not passed so `a` is not defined when we print it.
%

---

```javascript
function func() {
  var a = 'hello';
}
console.log(a);
```

* `Reference Error`
* `'goodbye'`
* `'hello'`

%exp
`a` is scoped to the body of the `func` function.
%
