---
author: Dral

levels:
  - basic
  - advanced
  - medium

type: normal

category: best practice

tags:
  - introduction
  - workout
  - functional-programming
  - arrays

aspects:
  - introduction
  - workout

links:
  - '[MDN Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter){documentation}'

---

# Filtering Items out of an Array

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
  callback(element)
);
```

You pass a callback function which is applied to every element, and if the result of `callback` is `true` then the element gets added to `newArray`. This might seem a bit confusing, so let's take a look at an example:

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

`.filter` can also be applied directly to an array:

```js
function isOdd (element) {
  // ...
}
[1, 2, 3, 4].filter(
  isOdd
);
// [1, 3]
```

Note that you can use any type of array, you are not limited to a number array.

---
## Practice

`.filter`  can be used instead of ???.

* for and if
* if
* for and alert

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

* === 0
* filter
* isDivisibleBy3
* isDivisibleBy3()
* isDivisibleBy3(element)
* !== 0
* get

---
## Footnotes

[1:Syntax]
We've provided you with the simplified syntax (without any optional arguemnts), but there is the full one:

```js
let newArray = arr.filter(
  callback(element[, index, [array]])[,
  thisArg]
);
```

Here, `thisArg` is an optional parameter (hence being enclosed by brackets), and it represents that value that is used as `this` when executing the `callback` function.

For the `callback` function, it must have an `element` argument, with the `index` (the index of the current element being processed) and the `array` (the array on which you call `filter()`) arguments being optional. 