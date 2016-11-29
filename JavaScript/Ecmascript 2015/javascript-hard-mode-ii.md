# Javascript: Hard Mode II
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: tip

notes: Kangax quiz

---
## Content



---
## Game Content

```
typeof (function* f() { 
  yield f })().next().next()
```
* `Error`
* `"function"`
* `"generator"`
* `"object"`
---
```
typeof (new class f() 
  { [f]() { }, f: { } })[`${f}`]
```
* `Error`
* `"function"`
* `"undefined"`
* `"object"`
---
```
typeof `${{Object}}`.prototype
```
* `"undefined"`
* `"object"`
* `"function"`
* `Error`
---
```
((...x, xs)=>x)(1,2,3)
```
* `Error`
* `1`
* `3`
* `[1,2,3]`
---
```
let arr = [ ];
for (let { x = 2, y } of 
  [{ x: 1 }, 2, { y }]) {
    arr.push(x, y);
}
arr;
```
* `Error`
* `[{ x: 1 }, 2, { y }]`
* `[2, { x: 1 }, 2, 2, 2, { y }]`
---
```
(function() {
  if (false) {
    let f = { g() => 1 };
  }
  return typeof f;
})();
```
* `Error`
* `"function"`
* `"undefined"`
* `"object"`