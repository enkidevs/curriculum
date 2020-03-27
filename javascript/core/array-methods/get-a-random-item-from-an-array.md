---
author: AlexYancey

type: normal

category: how to

aspects:
  - introduction
  - workout

---

# Get a Random Item From an Array

---
## Content

Given the array:

```js
let food = ["Sushi", "Pizza", "Tacos"];
```

Select an item using `Math.random()` with a range of `food.length`[1].

```js
let randIndex =
  Math.floor(Math.random() * food.length);
```

Now, print out the result.

```js
console.log("Let's get " + food[randIndex]);
```

---
## Practice

How would you select a fruit at random from the array `fruits`?

```js
let fruits = [
  "oranges",
  "apples",
  "banana"
];

let index = Math.???(
  Math.random() * fruits.length
);

console.log(
  "the random fruit is" + fruits[index]
);

```

* `floor`
* `ceil`
* `wall`

---
## Revision

How would you select a fruit at random from the array `fruits`?

```js
let fruits = [oranges, apples, banana];

let index = Math.???(
  Math.random() * fruits.length
);

console.log(
  "the random fruit is" + fruits[index]
);
```


* `floor`
* `ceil`
* `wall`
 
---
## Footnotes

[1:Explanation]

The `Math.random()` function returns a random number between 0 and 1 (inclusive of 0 but non-inclusive of 1). By multiplying this with the length of the array (3), we will return a random number `x` which has the following bounds `0 < x < 2.99999...`. If we call `Math.floor()` to `x`, the result will be a random number between 0 and 2 inclusively.
