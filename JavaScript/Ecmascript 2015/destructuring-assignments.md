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
%exp
First we assign 1 to a and 2 to b.
After that we print a and b to the console.
%
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
%exp
x takes the first value in axes array
and y the second. Then we print x and y.
%
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
%exp
Here we assign the first value to x and
the third to z. After this we print x
and z to the console.
%
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
%exp
We define lat and lon as representing
latitude and longitude values. After
that we print them tot the console.
%
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
%exp
The syntax would work like this:
`[x, z, ...rest]`. This way rest will
take all remaining values in the array.
%
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
%exp
Here `rest` is assigned the last
two values remaining in the array.
And they will be printed.
%

---
