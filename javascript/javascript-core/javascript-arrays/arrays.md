---
author: alexjmackey
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Arrays


---

## Content

Arrays are an essential concept in JavaScript and are used frequently.

Here's how we can declare an array:

```js
let myArray = [1, 2, 3];
let anotherArray = ["a", "b", "c"];
```

Array's are *zero based/indexed* which means that if we want to retrieve the first value, we have to use `0` as the index value:

```js
let myArray = [1, 2, 3];

console.log(myArray[0]);
// 1
```

We can retrieve the last value of an array by using the `length` property and subtracting 1 from it:

```js
let myArray = [1, 2, 3];

let lastVal = myArray[myArray.length - 1];
console.log(lastVal);
// 3
```

Values can be added to the array using the `push` method:

```js
let myArray = [1, 2, 3];

myArray.push(4);

console.log(myArray);
// 1, 2, 3, 4

// we can even add multiple
// values at the same time
myArray.push(5, 6, 7);

console.log(myArray);
// 1, 2, 3, 4, 5, 6, 7
```

The last item can be returned and removed using `pop`:

```js
let myArray = [1, 2, 3];

let lastItem = myArray.pop();
console.log(lastItem);
// 3
console.log(myArray);
// [1, 2]
```

You can find the position of any item using the `indexOf` method:

```js
let myArray = [1, 2, 3];

let pos = myArray.indexOf(2);
console.log(pos);
// 1
```

You can iterate over the array items with a `for..of` loop:

```js
let myArray = [1, 2, 3];

for (let item of myArray) {
  console.log(item);
}

// 1
// 2
// 3
```


---

## Practice

How would you get the last value in the `myArray` array?

```js
let myArray = [1, 2, 3];
let arrayLength = myArray.???;
let lastVal = ???[??? ???];
console.log(lastVal);
// 3
```

- `length`
- `myArray`
- `arrayLength`
- `- 1`
- `+ 0`
- `+ 1`
- `array`
- `[0]`
- `.getLast`
- `.tail`


---

## Revision

Fill in the gaps such that you remove the last element of `enkiArray` and save it in the `elem` variable in a single line of code:

```js
let enkiArray = [1, 2, 3];
let elem = ???.???;
```

- `enkiArray`
- `pop()`
- `[2]`
- `unshift()`
- `getLast()`
- `last`
- `push()`


---

## Quiz

### what is the length of the array below?


```js
let arr = [,,,]
console.log(arr.length)
```

 ???

- 3
- 4
- 0
- 1
 
