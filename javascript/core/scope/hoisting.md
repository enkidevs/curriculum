---
author: AlexYancey

levels:

  - basic

  - medium

  - beginner

type: normal

category: feature

standards:
  javascript.functions.5: 10

tags:

  - introduction

  - workout



notes: ''

aspects:
  - introduction
  - workout


---

# Hoisting

---
## Content

Think fast, what does this snippet print?
```javascript
var a = 1;
function go() {
  console.log(a);
  var a = 2;
}
go();
```

If you thought the answer was `1`, you are incorrect!

` > undefined`

One quirk of JavaScript is *hoisting*.

This default behaviour moves all variable declarations to the top of the current scope.

This is how the snippet is actually executed, in order:

```javascript
var a;
a = 1;
function go() {
  var a;
  console.log(a);
  a = 2;
}
go();
```
In this case, `a` is redeclared and reset to `undefined` before it is logged.

---
## Practice

What will the following functions print? ???

```javascript
var e = 1;
function run() {
  console.log(e);
  var e = 4;
}
run();

var c = 1;
function calc() {
  console.log(c * c);
  c = 4;
}
calc();
```


* `run: undefined, calc: 1`
* `run: 1, calc: 1`
* `run: 4, calc: 1`
* `run: 4, calc: 4`
* `run: undefined, calc: undefined`

---
## Revision

What will this print
```javascript
var a = 1;
function go() {
  console.log(a);
  var a = 2;
}
go();
// ???
```

* `undefined`
* `1`
* `2`
 
