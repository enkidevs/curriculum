---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/values){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array Extensions


---

## Content

In ES2015, the array type was updated to conform to the shape of an **iterator**. This gave arrays 3 additional methods:

- `keys`
- `values`
- `entries`

If you haven't used an iterator before, you can think of it as a collection that you can move through, one element at a time.

The below code uses the `entries` method to get an iterator and then logs the *keys* and *values*:

```javascript
let arr = ["a", "b", "c"];

let keysAndValues = arr.entries();

keysAndValues.next();
// {value: [0, "a"], done:false}

keysAndValues.next();
// {value: [1, "b"], done:false}

keysAndValues.next();
// {value: [2, "c"], done:false}

keysAndValues.next();
// {value: undefined, done: true}
```


---

## Practice

What will the following code do?

```javascript
let enki = ["e", "n", "k", "i"]

let enkiIterator = enki.keys()

console.log(enki[enkiIterator.next().value])
// ???
```

- log e
- log en
- raise an error
- log undefined


---

## Revision

Fill in the gaps such that an iterator will be created from the given array and the code won't raise any errors. The last gap should be completed with the right output of the expression above:

```javascript
let arr = [3, 1, 4]

let arrIt = arr.???()

let first = arrIt.???()
console.log(first.value[0])
// 0
console.log(first.???[???])
// 3
let second = arrIt.next()
console.log(???.value)
// ???
```

- `entries`
- `next`
- `value`
- `1`
- `second`
- `[1, 1]`
- `[1, 4]`
- `[0, 1]`
- `first`
- `keys`
- `iterator`
- `toIterator`
- `key`
- `2`
- `3`
- `0`
 
