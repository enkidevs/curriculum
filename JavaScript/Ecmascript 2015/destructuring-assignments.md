# Destructuring assignments
author: WebReflection

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: must-know

links:

  - >-
    [MDN
    Destructuring](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){documentation}

---
## Content

What will be shown on the console?

---
## Game Content

```
let {a, b} = {a:1, b:2};
console.log(a, b);
// ???
```
* `1, 2`
* `undefined, undefined`
* `{a: 1}, {b: 2}`
---

```
let axes = [10, 15, -7];
let [x, y] = axes;
console.log(x, y);
// ???
```
* `10, 15`
* `10, [15, -7]`
* `[10, 15], -7`
* `[10, 15, -7], [10, 15, -7]`
---

```
function axes() {
  return [10, 15, -7];
}
let [x, , z] = axes();
console.log(x, z);
// ???
```
* `10, -7`
* `SyntaxError`
* `10, [15, -7]`
* `10, 15`
---

```
const coords = {
  latitude: 43.617,
  longitude: 13.517
};
const {
  latitude:lat,
  longitude:lon
} = coords;
console.log(lat, lon);
// ???
```
* `43.617, 13.517`
* `ReferenceError`
* `undefined, undefined`
---

```
function axes() {
  return [10, 15, -7];
}
let [x, ...rest, z] = axes();
console.log(x, z);
// ???
```
* `SyntaxError`
* `10, -7`
* `10, [15, -7]`
* `10, 15`

---

```
function abcde() {
  return ['a','b','c','d','e'];
}
let [a, b, c, ...rest] = abcde();
console.log(rest);
// ???
```
* `['d', 'e']`
* `SyntaxError`
* `['a','b','c','d','e']`
* `'de'`