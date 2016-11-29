# Splice
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Array/splice){website}

---
## Content

Splice is a very useful array function that allows you to add and remove items to an array. 

It accepts 3 arguments with the 3rd being optional:

- *Start* is the 0 based index of where to start manipulating the array
- *Delete* is how many items to remove at the *Start* position (can be 0)
- *Array of items to add* (optional) 

We can use splice to add and remove items anywhere in the array.

For example to remove the 3rd element:

```
myArray.splice(2, 1); 
```
Or we could remove the 1st element:
```
//remove 1st element and insert new 
myArray.splice(0, 1, 4); 

```

---
## Practice

Remove elements on indexes `4` and `5` from the array:
```
myArray.???(3, ???)
```
*`splice`
*`2`
*`slice`
*`remove`
*`3`
*`4`
*`5`
*`6`
*`delete`

---
## Revision

How would you remove the first element in the array using `splice`?
```
myArray.???(???, ???);
```

*`splice`
*`0`
*`1`
*`2`
*`remove`
*`slice`