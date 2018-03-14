---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know


links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-spread-and-butter-in-depth){website}'
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Spread_operator){website}'

inAlgoPool:

---

# Spread (Part 2)

---
## Content

The spread syntax is particularly useful when working with arrays and we can use it to copy an array (previously you would probably have used slice to accomplish this):

```
var original = [1,2,3];
var copyOfOriginal = [...original];
```

We can even copy the original array into the middle of a new array: 

```
var another = [0, ...original, 4, 5, 6];
//[0, 1, 2, 3, 4, 5, 6]
```

Or add on the end of an existing array:

```
original.push(...copyOfOriginal);
//[1, 2, 3, 1, 2, 3]
```

