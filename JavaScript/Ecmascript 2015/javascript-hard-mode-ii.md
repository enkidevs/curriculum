# JavaScript: Hard Mode II
author: jordanfish

levels:


  - advanced

  - medium

type: fillTheGap

category: tip

notes: Kangax quiz

---
## Content

Are you up for a challenge?

Test you JavaScript knowledge with some questions taken from `Kangax`'s quiz.

Keep in mind some of these questions are not practical so don't worry if you get some wrong.

Note that you need to assume **ECMAScript** 3rd edition. In addition, all `Error` answers describe a runtime error.

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
