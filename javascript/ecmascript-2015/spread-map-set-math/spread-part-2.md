---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

links:
  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-spread-and-butter-in-depth){website}'
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Spread_operator){website}'

---
# Spread (Part 2)

---
## Content

The spread syntax is particularly useful when working with arrays and we can use it to copy an array (previously you would probably have used slice to accomplish this):

```javascript
var original = [1,2,3];
var copyOfOriginal = [...original];
```

We can even copy the original array into the middle of a new array: 

```javascript
var another = [0, ...original, 4, 5, 6];
//[0, 1, 2, 3, 4, 5, 6]
```

Or add on the end of an existing array:

```javascript
original.push(...copyOfOriginal);
//[1, 2, 3, 1, 2, 3]
```

---
## Practice

Fill in the gaps such that the array is properly filled in:

```javascript
const initial = [1, 2, 3]
const second = [5, 6, 7]
const final = [?????? ??? ???, ???]
console.log(final)
// 1, 2, 3, 4, 5, 6, 7
```

* ...
* initial
* ,
* 4
* ...second
* ...initial
* , ,
* second
* 3
* 6
* final
* ...final

---
## Revision

What is the value of the `final` array:

```javascript
let initial = [3, 6, 2]
const final =
  initial.concat(
    [4, ...initial,...initial]
    )
console.log(final)
// ???
```

* [3, 6, 2, 4, 3, 6, 2, 3, 6, 2]
* [4, 3, 6, 2, 3, 6, 2, 3, 6, 2]
* [3, 6, 2, 3, 6, 2, 4, 3, 6, 2]
* [3, 6, 2, 2, 3, 6, 2, 4, 6, 2]
 
