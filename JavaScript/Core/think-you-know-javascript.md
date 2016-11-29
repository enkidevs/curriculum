# Think you know Javascript?
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

notes: ''

---
## Content

Are you prepared for Dmitry Baranovskiy's famous "So, you think you know Javascript?" 

It's a quick test for real understanding of JavaScript core beyond closures and scopes.

---
## Game Content

```
if (!("a" in window)) {
  var a = 1;
}
alert(a);
```
* `undefined`
* `1`
* `Error`
---
```
var a = 1,
  b = function a(x) {
    x && a(--x);
  };
alert(a);
```
* `1`
* `2`
* `undefined`
---
```
function a(x) { return x * 2; }
var a;
alert(a);
```
* `function a(x) { return x * 2; }`
* `Error`
* `undefined`
---
```
function b(x, y, a) {
  arguments[2] = 10;
  alert(a);
}
b(1, 2, 3);
```
* 10
* 2
* 3
---
```
function a() {
  alert(this);
}
a.call(null);
```
* [object Window]
* `null`
* `undefined`