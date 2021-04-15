---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Spread_operator){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Spread (Part 1)


---

## Content

The spread operator automatically assigns (or spreads out) the contents of an expression to multiple arguments, elements or variables which can save you some tedious assignment code.

For example let’s say we have an array with 3 values we want to pass to a function accepting three arguments:

```javascript
var test = [1,2,3];
function func(x, y, z){
...
}
```

We could of course call the function with values from the array as follows:

```javascript
func(test[0],test[1],test[2]);
```

However we can use the spread operator to assign (or spread out) these values to the x, y and z parameters without explicitly defining where they should be assigned:

```javascript
func(...test); //x=1, y=2, z=3
```

The spread operator can even be applied multiple times so if we had a function with 6 arguments we can use the spread operator twice if we wanted to reuse the input variables:

```javascript
function someFunc(x, y, z, a, b, c){
...
}

someFunc(...test, ...test);
```

This saves some tedious and potentially error prone assignment code.


---

## Practice

Consider the function:

```javascript
function compute(a, b, c, d) {
  return a + b * c + d;
}
```

If you have two arrays:

```javascript
const arr1 = [2, 5]
const arr2 = [10, 30]
```

Complete the following function call such that the outputted value is correct:

```javascript
console.log(
  compute(??????, ???)
)
// 82
```

- ...
- arr1
- ...arr2
- arr2
- ...arr1
- ,
- [arr1]
- [arr2]


---

## Revision

Complete the following code snippet such that the log statements are correct:

```javascript
function addNumbers(a, b) {
  return a + b
}
const arr1 = [4, 5]
const arr2 = [5, 6]

console.log(??? ??? ???)
// 9
console.log(??? ???)

```

- addNumbers(
- ...
- arr1)
- addNumbers
- (...arr2)
- arr2)
- addNumbers(...)
- addNumbers(arr1)
- arr2
- arr1
 
