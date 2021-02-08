---
author: Bruno
type: normal
category: tip
tags:
  - introduction
  - workout
  - slice
links:
  - '[How to format numbers by prepending 0 to single-digit numbers?](https://stackoverflow.com/questions/8043026/how-to-format-numbers-by-prepending-0-to-single-digit-numbers){discussion}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Quick Way to Format Integers With a Fixed Number of Digits.


---

## Content

If we are required to format a number with a particular amount of digits, for example:

```html
0001
0002
0102
0345
1483
```

We can use `slice()` to achieve the desired result.

```javascript
var digits = 4;
var prefix = "0000";
var myNum = 16;
(prefix+myNum).slice(-digits);
// "0016"
```

Pay attention though, as `slice()` will throw an error if called by a *number*, not a *string*.


---

## Practice

What will the following code output?

```javascript
console.log(
  ("0044742323412")
    .slice(-3)
);
// ???

console.log(
  (32410000)
    .slice(-5)
);
// ???
```

- 412
- throws an error
- 10000
- 004


---

## Revision

What will the following code output?

```javascript
console.log(("123").slice(-4));
// ???
```

- 123
- 0123
- 0001
 
