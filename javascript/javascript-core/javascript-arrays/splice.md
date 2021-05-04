---
author: alexjmackey
type: normal
category: must-know
tags:
  - introduction
links:
  - >-
    [splice](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/splice){documentation}
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

# Splice


---

## Content

Splice is a handy array function that allows you to add and remove items to an array.

It accepts three arguments, with **only the first being mandatory**:

- *Start* is the 0 based index of where to start manipulating the array
- *Delete* is how many items to remove at the *Start* position (can be 0)
- *Items to add*, separated by commas

If the *Delete* argument is omitted, `splice` will remove all elements from the specified *Start* to the end of the array. On the other hand, if it's `0` or a negative number, it won't delete any elements.

We can use splice to add and remove items anywhere in the array.

For example to remove the 3rd element:

```js
let myArray = [1, 2, 3];

console.log(
  myArray.splice(
    2, // start at index 2
    1  // remove the first item
  )
);
// [3]

console.log(myArray);
// [1, 2]
```

As you can see, the function returns the elements removed in case you need them.

You can also replace a sequence of elements:

```js
console.log(myArray);
// [1, 2]

console.log(
  myArray.splice(
    0, // start at index 0
    2, // remove first two items
    3, // insert 3
    4  // insert 4
  )
);
// [1, 2]

console.log(myArray);
// [3, 4]
```

In this example, we start from index `0` and replace the first two elements (which are `1` and `2`) with `3` and `4`. Notice how both `3` and `4` are inserted as different arguments. This is because each item to be inserted is represented by an argument[1]. If we were to use `[3, 4]` as an argument, we would actually nest another list:

```js
let myArray = [1, 2]
myArray.splice(
  1, // start at index 1
  1, // remove first item
  [3, 4] // insert the [3, 4] list
);

console.log(myArray);
// [1, [3, 4]]
```


---

## Practice

Remove the `4th` and `5th` elements from the array:

```js
myArray.???(3, ???)
```

- `splice`
- `2`
- `slice`
- `remove`
- `3`
- `4`
- `5`
- `6`
- `delete`


---

## Revision

How would you remove the first element in the array using `splice`?

```js
myArray.???(???, ???);
```

- `splice`
- `0`
- `1`
- `2`
- `remove`
- `slice`


---

## Footnotes

[1:Syntax]
The full syntax of `splice` is:

```js
array.splice(
  start,
  deleteCount,
  item1,
  item2,
  item3,
  ...
);
```
 
