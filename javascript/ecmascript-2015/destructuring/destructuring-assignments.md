---
author: WebReflection

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: must-know

links:

  - '[MDN - Destructuring](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){documentation}'

---

# Destructuring assignments

---
## Content

What will be shown on the console?

---
## Game Content

```javascript
let {a, b} = {a:1, b:2};
console.log(a, b);
// ???
```

* 1, 2
* undefined, undefined
* {a: 1}, {b: 2}

%exp
We assign `1` to `a` and `2` to `b`.
%

---

```javascript
let axes = [10, 15, -7];
let [x, y] = axes;
console.log(x, y);
// ???
```

* 10, 15
* 10, [15, -7]
* [10, 15], -7
* [10, 15, -7], [10, 15, -7]

%exp
`x` takes the first value in `axes` array and `y` the second.
%

---

```javascript
function axes() {
  return [10, 15, -7];
}
let [x, , z] = axes();
console.log(x, z);
// ???
```

* 10, -7
* SyntaxError
* 10, [15, -7]
* 10, 15

%exp
Here we assign the first value to `x` and the third to `z`.
%

---

```javascript
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

* 43.617, 13.517
* ReferenceError
* undefined, undefined

%exp
We define `lat` and `lon` variables with the values of `latitude` and `longitude`.
%

---

```javascript
function axes() {
  return [10, 15, -7];
}
let [x, ...rest, z] = axes();
console.log(x, z);
// ???
```

* SyntaxError
* 10, -7
* 10, [15, -7]
* 10, 15

%exp
The syntax would work like this: `[x, z, ...rest]`.

This would mean that the `rest` variable would be assigned the remaining values of the returned array (except the first two).
%

---

```javascript
function abcde() {
  return ['a','b','c','d','e'];
}
let [a, b, c, ...rest] = abcde();
console.log(rest);
// ???
```

* ['d', 'e']
* SyntaxError
* ['a','b','c','d','e']
* 'de'

%exp
Here `rest` is assigned the last two values in the array.
Finally, they will be printed.
%
