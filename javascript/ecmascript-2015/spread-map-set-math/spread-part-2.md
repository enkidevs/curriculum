---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Spread and Butter in
    Depth](https://ponyfoo.com/articles/es6-spread-and-butter-in-depth){website}
  - >-
    [Spread
    Operator](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Spread_operator){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Spread (Part 2)


---

## Content

The spread syntax is particularly useful when working with arrays and we can use it to (shallow) copy[1] an array (previously you would probably have used `slice` to accomplish this):

```javascript
let original = [1, 2, 3];
let copyOfOriginal = [...original];
```

We can even copy the original array into the middle of a new array: 

```javascript
let another = [0, ...original, 4, 5, 6];
// [0, 1, 2, 3, 4, 5, 6]
```

Or add an existing array to the end:

```javascript
original.push(...copyOfOriginal);
// [1, 2, 3, 1, 2, 3]
```


---

## Practice

Fill in the gaps such that the array is properly filled in:

```javascript
const initial = [1, 2, 3];
const second = [5, 6, 7];
const final = [
  ?????????
  ???, 
  ???
];
console.log(final)
// 1, 2, 3, 4, 5, 6, 7
```

- ...
- initial
- ,
- 4
- ...second
- ...initial
- , ,
- second
- 3
- 6
- final
- ...final


---

## Revision

What is the value of the `final` array:

```javascript
let initial = [3, 6, 2];
const final =
  initial.concat(
    [4, ...initial,...initial]
  );
console.log(final);
// ???
```

- `[3, 6, 2, 4, 3, 6, 2, 3, 6, 2]`
- `[4, 3, 6, 2, 3, 6, 2, 3, 6, 2]`
- `[3, 6, 2, 3, 6, 2, 4, 3, 6, 2]`
- `[3, 6, 2, 2, 3, 6, 2, 4, 6, 2]`


---

## Footnotes

[1: Shallow Copy]
A shallow copy of a collection is a copy of the collection structure, not the elements within it. With a shallow copy, two collections now share the individual elements.

```js
const arr = [ { name: 'Enki' }, { name: 'Example' } ];
const copy = [...arr];
// copy is now a different collection from arr
console.log(copy === arr); // false
// but still contains the same elements
console.log(copy[0] === arr[0]); // true
console.log(copy[1] === arr[1]); // true
```
 
