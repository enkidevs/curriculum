---
author: catalin
type: normal
category: hack
links:
  - >-
    [Merge Arrays with
    JavaScript](https://davidwalsh.name/merge-arrays-javascript){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How to Merge Two Arrays


---

## Content

One approach that we can use to merge two arrays in JavaScript, is to loop through the first array and add each of its elements to the second array:

```js
let array1 = [1, 2, 3];
let array2 = [4, 5, 6];

for (let item of array2) {
  array1.push(item);
}

console.log(array1);
// 1, 2, 3, 4, 5, 6
```

We can also use the spread operator, i.e. `...`, to do the same with less code:

```js
let array1 = [1, 2, 3];
let array2 = [4, 5, 6];

array1.push(...array2);

console.log(array1);
// 1, 2, 3, 4, 5, 6
```

Arrays also have a method that can be used to merge them:

```js
let array1 = [1, 2, 3];
let array2 = [4, 5, 6];
let array3 = array1.concat(array2);
```

The notable difference when using `concat` is that, instead of merging one array into another, it generates a new array out of the two merged arrays.

> 💡 Unlike other languages, JavaScript does not support using `+` to concatenate arrays. The output of such an operation would be a string:

```javascript
console.log([1, 2] + [3, 4])
// 1,23,4
```


---

## Practice

Modify `array1` such that it contains `array2`'s contents in order.

```javascript
let array1 = ['a', 'b', 'c'];
let array2 = ['d', 'e', 'f'];

array1.???(???array2)
```

- `push`
- `...`
- `merge`
- `-`
- `concat`


---

## Revision

What is the value of `a` at the end of the following snippet?

```javascript
let a = [3, 1, 4]
let b = [2, 7, 1]
a.concat(b);

console.log(a);
```

???

- `[3, 1, 4]`
- `[3, 1, 4, 2, 7, 1]`
- `[[3, 1, 4], [2, 7, 1]]`
- `2, 7, 1`


---

## Quiz

### what is the result of the following addition?


```javascript
console.log([3, 14] + [2, 71])
```

???

- `3,142,71`
- `3,14,2,71`
- `[3,14,2,71]`
- `[5, 85]`
 
