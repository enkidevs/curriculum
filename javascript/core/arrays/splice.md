---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.evaluate-expressions.6: 1000
  javascript.evaluate-expressions.7: 1000
  javascript.data-types-structures.3: 1000
  javascript.standard-library.4: 1000

tags:
  - introduction

aspects:
  - introduction

links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/splice){website}'


---

# Splice

---
## Content

Splice is a handy array function that allows you to add and remove items to an array.

It accepts 3 arguments with the 3rd being optional:

- *Start* is the 0 based index of where to start manipulating the array
- *Delete* is how many items to remove at the *Start* position (can be 0)
- *Array of items to add* (optional)

We can use splice to add and remove items anywhere in the array.

For example to remove the 3rd element:
```
let myArray = [1, 2, 3];
console.log(myArray.splice(2, 1));
// [3]
console.log(myArray);
// [1, 2]
```
As you can see, the function returns the elements removed in case you need them.

You can also replace a sequence of elements:
```
console.log(myArray);
// [1, 2]
console.log(myArray.splice(0, 2, 3, 4));
// [1, 2]
console.log(myArray);
// [3, 4]
```

---
## Practice

Remove the `4th` and `5th` elements from the array:
```
myArray.???(3, ???)
```

* `splice`
* `2`
* `slice`
* `remove`
* `3`
* `4`
* `5`
* `6`
* `delete`

---
## Revision

How would you remove the first element in the array using `splice`?
```
myArray.???(???, ???);
```


* `splice`
* `0`
* `1`
* `2`
* `remove`
* `slice`
 
 