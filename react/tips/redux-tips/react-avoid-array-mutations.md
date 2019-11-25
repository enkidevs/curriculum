---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice


links:

  - '[Avoiding array mutations](https://egghead.io/lessons/javascript-redux-avoiding-array-mutations-with-concat-slice-and-spread){website}'
  - '[Immutability helper](https://github.com/kolodny/immutability-helper){website}'

aspects:
  - deep

---

# Avoid array mutations

---
## Content

There are different ways of creating a **pure** function needed in **Redux** for generating a new array of items. These types of functions are necessary for `reducers` because Redux takes a given state, passes it to each `reducer`, and finally it expects a new object if there are any changes. If we mutate the old state in a `reducer`, both the old state and the new state point to the same object, resulting in Redux thinking that there has been no change.

Using the `push()` standard method will alter the original object and should be avoided because it is not **pure**.

The key when inserting or removing a new item is that the original in-memory reference is not modified. This can be achieved by creating a copy of the array, and safely mutating the copy:

```js
function insertItem(array, action) {
  let newArray = array.slice();
  newArray.splice(
    action.index,
    0,
    action.item
  );
  return newArray;
}
// this will add a 0 at the end of the array

function insertItem(array) {
  let newArray = array;
  return newArray.concat([0]);
}
// same functionality

function insertItem(array) {
  let newArray = array;
  return [...newArray, 0];
}
// same functionality
```

When removing items, you can use:

```js
function removeItem(array, action) {
  let newArray = array.slice();
  newArray.splice(action.index, 1);
  return newArray;
}

// or

function removeItem(array, action) {
  return array.filter(
    (item, index) => index !== action.index
  );
}

// or

function removeItem(array, action) {
  return array
    .slice(0, action.index)
    .concat(array.slice(action.index + 1));
}

// or

function removeItem(array, action) {
  return [
    ...array.slice(0, action.index),
    ...array.slice(action.index + 1)
  ];
}
```

Updating an item in an array is done by using the `Array.map` method together with the spread (`...`) operator:

```js
function updateItemInArray(array, action) {
  return array.map((item, index) => {
    if (index !== action.index) {
      return item;
      // this isn't the item we want
      // return it un-modified
    }

    return {
      ...item,
      ...action.item
    };
  });
}
```

The last option is to use an immutability helper, like the `immutability-helper` library that was explained in a previous workout.

---
## Practice

Append `enki` to `myArray` using the spread operator in a **pure** fashion:

```js
return [???myArray, ???];
```


* `...`
* `enki`
* `concat`
* `splice`
* `slice`

---
## Revision

Append `enki` to `myArray` using the spread operator in a **pure** fashion:

```js
return [???myArray, ???];
```


* `...`
* `enki`
* `concat`
* `splice`
* `slice`


