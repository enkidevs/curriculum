---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: hack

standards:

  js.data-types-structures.2: 10

  js.data-types-structures.3: 10

tags:

  - introduction

  - workout

  - arrays


links:

  - '[davidwalsh.name](https://davidwalsh.name/merge-arrays-javascript){website}'


---

# How to merge two arrays

---
## Content

`concat` is not always the best approach to merging arrays as it generates a new array.

Since `var`s are passed by reference, `concat` may mess up a reference.

Instead:
```javascript
var array1 = [1, 2, 3];
var array2 = [4, 5, 6];

```
Merge them, adding the second one after the first one:
```javascript
Array.prototype.push.apply(array1, array2);

```

Unlike other languages, JavaScript does not support `+` for concatenating arrays. The output of such an operation would be a string:
```javascript
console.log([1, 2] + [3, 4])
// 1,23,4
```

---
## Revision

Suppose:
```javascript
var array1 = ['a', 'b', 'c'];
var array2 = ['d', 'e', 'f'];
```

Merge the two arrays in order:
```javascript

???.prototype.???
.???(arrray1, arrray2);
```

* `Array`
* `push`
* `apply`
* `merge`
* `arrayList`
* `on`
* `after`
* `concat`

---
## Quiz
### what is the result of the following addition?

```javascript
console.log([3, 14] + [2, 71])
```

 ???

* 3,142,71
* 3,14,2,71
* [3,14,2,71]
* [5, 85]
