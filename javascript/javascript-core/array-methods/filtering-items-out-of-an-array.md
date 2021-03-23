---
author: Dral
type: normal
category: best-practice
tags:
  - introduction
  - workout
  - functional-programming
  - arrays
links:
  - >-
    [MDN
    Filter](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter){documentation}
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

# Filtering Items Out of an Array


---

## Content

A common pattern to filter items from an array is the following:

```js
let persons = [...];
let activated = [];
for (let person of persons) {
  if (person.isActived) {
    activated.push(person);
  }
}
```

However, using the `Array.prototype.filter` method is generally more concise and readable. With `filter()`, you **create a new array** whose elements must pass a test. Here's the simplified syntax[1]:

```js
let newArray = arr.filter(
  function callback(element) {
    // if callback returns true
    // element is kept in array
  }
);
```

You pass a callback function which is applied to every element, and if the result of `callback` is truthy then the element gets added to `newArray`. Let's take a look at an example:

```js
let numbers = [
  1,
  2,
  3,
  4
];

function isEven (element) {
  if (element % 2 === 0) {
    return true;
  }
  return false;
}

let even = numbers.filter(
  isEven
)
console.log(even);
// [2, 4]
```

> 💡 You can use any type of array, you are not limited to a number array.


---

## Practice

`.filter`  can be used instead of ???.

- for and if
- if
- for and alert


---

## Revision

Complete the following snippet such that the `div3` variable will contain all numbers divisible by 3:

```javascript
let numbers = [
  0, 1, 2,
  3, 4, 5,
  6, 7
];

function isDivisibleBy3(element) {
  if (element % 3 ???) {
    return true;
  }
  return false;
}

let div3 = numbers.???(
  ???
);
```

- === 0
- filter
- isDivisibleBy3
- isDivisibleBy3()
- isDivisibleBy3(element)
- !== 0
- separate


---

## Footnotes

[1:Syntax]
We've provided you with the simplified syntax (without any optional arguments), but here is the full one:

```js
let newArray = arr.filter(
  callback(element, index, array) {
    // if callback returns true
    // element is kept in array
  },
  thisArg
);
```

The `callback` function can take three arguments:

- `element` (mandatory)
- `index` (optional, it represents the index of the current element being processed)
- `array` (optional, it represents the array on which you call `filter()`)

Here, `thisArg` is also an optional parameter, and it represents that value that is used as `this` when executing the `callback` function.
 
