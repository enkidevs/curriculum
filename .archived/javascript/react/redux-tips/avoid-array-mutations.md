---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice


links:

  - '[egghead.io](https://egghead.io/lessons/javascript-redux-avoiding-array-mutations-with-concat-slice-and-spread){website}'

aspects:
  - deep

---

# Avoid array mutations

---
## Content

There are different ways of creating a **pure** function needed in **Redux** for generating a new array of items.

Using the `push()` standard method will alter the original object and should be avoided because it is not **pure**.

Instead, if you want to append an element to the end of the array simply use the `concat()` method or the new spread operator (`...`) :

```javascript
return myArray.concat([0]);
//this will add a 0 to the end of the array
return [...myArray, 0];
//same result with spread operator
```
To remove an element from an array at a given index point, rather than using the mutating `splice()` method, a combination of `concat()` and  `slice()` (returning a new array between two indexes) can  be used:
```javascript
return myArray.slice(0,index)
  .concat(myArray.slice(index+1));
//will remove a given index from an array
return [ ...myArray.slice(0,index),
  ...myArray.slice(index+1)];
//same result with spread operator

```
Other operations should follow the same strategies described above.

---
## Practice

Append `enki` to `myArray` using the spread operator in a **pure** fashion:
```
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
```
return [???myArray, ???];
```


* `...`
* `enki`
* `concat`
* `splice`
* `slice`


