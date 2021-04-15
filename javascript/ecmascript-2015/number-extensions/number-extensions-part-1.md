---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Number Extensions (Part 1)


---

## Content

The `Number` class benefits from many methods saving you from writing your own potentially error prone-implementation. 

This insight will explain the ones you are more likely to use.

### Number.isFinite

Determines whether a number is finite (finite means that it could be measured or have a value).

```javascript
Number.isFinite(Infinity); // false
Number.isFinite(100); // true
```

### Number.isInteger

Determines if a number is an integer or not.

```javascript
Number.isInteger(1); // true
Number.isInteger(0.1); // false
```

### Number.isNaN

There's an important gotcha about the value `NaN` (Not a Number) that makes it hard to verify. 

Usually, to verify a value we would use an equality check. To check if `x` is `5`, we would check if `x == 5` is `true`.

However, `NaN` doesn't work this way because `NaN == NaN` is `false`.

Historically, this required us to use the global `isNaN` method to verify if a value is `NaN`.

```js
isNaN(5);   // false
isNaN(NaN); // true
```

`isNaN` comes with one problem though - it will convert the given value to a number before checking equality to `NaN`. This can lead to unexpecting behavior:

```js
// wait...what?? 😱
isNaN('enki'); // true
isNaN([1, 2, 3]); // true
isNaN(() => 'oops'); // true
```

That is the issue `Number.isNaN` is designed to address. 

`Number.isNaN()` will only attempt to compare a value to `NaN` if the value is a number. Any other type will return `false`, even if they are literally "not a number".

```javascript
// ok, that's much better ✅
Number.isNaN('enki'); // false
Number.isNaN([1, 2, 3]); // false
Number.isNaN(() => 'oops'); // false
Number.isNaN(5); // false

Number.isNaN(NaN); // true
```


---

## Practice

What is the output of the following two calls?

```javascript
const enki = "enki";

isNaN(enki);
// ???
Number.isNaN(enki);
// ???
```

- true
- false
- false
- true

---

## Revision

Complete the missing calls with methods such that all the statements are true:

```javascript

Number.isNaN('enki')
// ???
Number.isFinite(0)
// ???
Number.isInteger(9.81)
// ???
```

- false
- true
- false
- false
- true
- false
