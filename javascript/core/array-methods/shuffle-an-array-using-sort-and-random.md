# Shuffle an array using `sort` and `random`.
author: Bruno

levels:

  - beginner

type: normal

category: hack

standards:
  js.data-types-structures.2: 10
  js.data-types-structures.3: 10
  js.standard-library.1: 10
  js.standard-library.4: 10

tags:
  - introduction
  - workout

links:

  - '[stackoverflow](http://stackoverflow.com/questions/2450954){discussion}'

---
## Content

Given the array:

```
var array = [1,2,3,4,5,6,7,8,9];
```
Sort randomly with:
```
array.sort(function(){
  return Math.random() - 0.5
});
```
The `- 0.5` means the returned value exists between the range `-0.5 < x < 0.5`, allowing the sort function to decide where to position the next item.

An example result:

```
array = [4,3,1,2,9,5,6,8,7]
```

---
## Revision

The following code will ???
```javascript
var arr = [1,2,3,4,5,6,7];
arr.sort(function(){
  return Math.random() - 0.5;
});
```
*shuffle the array
*sort the array decreasingly
*do nothing to the array
