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
var array = [1,2,3,4,5,6,7,8,9];
```

Sort randomly with:

```javascript
array.sort(function() {
  return Math.random() - 0.5
});
```

The `- 0.5` means the returned value exists between the range `-0.5 < x < 0.5`, allowing the sort function to decide where to position the next item.

An example result:

```javascript
array = [4,3,1,2,9,5,6,8,7]
```

---
## Practice

Complete the code such that it will shuffle an array using `sort` and `random`.

```javascript
var arr = [3, 1, 4, 2, 7, 1]
arr.???(???() {
  return ???.???() - 0.5
});

// arr = [4, 2, 7, 1, 1, 3]
```

* sort
* function
* Math
* random
* shuffle
* () =>
* arr
* merge
* prototype
* Array
* call
* apply
* +=
* -0.5

---
## Revision

The following code will ???

```javascript
var arr = [1,2,3,4,5,6,7];
arr.sort(function(){
  return Math.random() - 0.5;
});
```

* shuffle the array
* sort the array decreasingly
* do nothing to the array
 
 