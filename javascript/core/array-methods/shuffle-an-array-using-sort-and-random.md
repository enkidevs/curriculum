---
author: Bruno

levels:
  - beginner

type: normal

category: hack

standards:
  javascript.data-types-structures.2: 10
  javascript.data-types-structures.3: 10
  javascript.data-types-structures.6: 10
  javascript.standard-library.1: 10
  javascript.standard-library.4: 10

tags:
  - introduction
  - workout

aspects:
  - introduction
  - workout

links:
  - '[stackoverflow](http://stackoverflow.com/questions/2450954){discussion}'

---
# Shuffle an array using sort and random

---
## Content

Given the array:

```javascript
let array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
```

You could sort it randomly using `Array.prototype.sort()`[1]:

```javascript
array.sort((a, b) => {
  return Math.random() - 0.5
});
// The order will be different
// every time
// [5, 4, 2, 1, 6, 3, 7, 8, 9]
```

This is due to how the `Array.prototype.sort()` method works. The comparator function we pass as an argument compares two values from the array on each sort cycle, let's call them `a` and `b`. Each comparison returns a number that determines whether `a` or `b` comes first in the sorted result. If we return:
- `0`, then the sort order doesn't change 
- `> 0`, then `b` comes before `a`
- `< 0`, then `a` comes before `b` 

In our example, we return `Math.random() - 0.5` which works like this:
- `Math.random()` return a random number between 0 and 1 (`0 < Math.random() < 1`)
- we subtract `0.5` from the random number (`-0.5 < Math.random() - 0.5 < 0.5`)
- we sort the array depending on the result

---
## Practice

Complete the code such that it will shuffle an array using `sort` and `random`.

```javascript
let arr = [3, 1, 4, 2, 7, 1]
arr.???((???) => {
  return ???.???() - 0.5
});

// arr = [4, 2, 7, 1, 1, 3]
```

* sort
* a, b
* Math
* random
* shuffle
* x
* arr
* prototype
* Array
* call
* apply

---
## Revision

The following code will ???

```javascript
let arr = [1, 2, 3, 4, 5, 6, 7];
arr.sort(() => {
  return Math.random() - 0.5;
});
```

* shuffle the array
* sort the array decreasingly
* do nothing to the array

---
## Footnotes

[1:Array.prototype.sort()]
This method, when used on its own, converts the elements of the given array into strings, and sorts them by comparing their sequences of UTF-16 code units value:
```js
let days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
days.sort();
console.log(days);
// Output:
// ['Friday', 'Monday', 'Thursday', 'Tuesday', 'Wednesday']
```

You can also pass a function as an argument. The function can take `(a, b)` as input, representing a pair of 2 elements in the array that the function will be called on. It must return a number, and depending on the returned number it means:
- `0`, then the sort order doesn't change 
- `> 0`, then `b` comes before `a`
- `< 0`, then `a` comes before `b` 

```js
let numbers = [1, 2, 3, 4, 5];
numbers.sort((a, b) => {
  return b - a;
})
console.log(numbers);
// Output:
// [5, 4, 3, 2, 1]
```
