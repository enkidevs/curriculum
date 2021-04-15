---
author: AlexYancey
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
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

In this example, we use `Math.random()` to get a random number between `0` and `0.999...`. We multiply this value by the length of our `food` array, which will result in a value between `0` and `2.999`. The last step is applying `Math.floor()` to this value, which will result in either `0`, `1` or `2`. This is how we would get a random index.

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

- `floor`
- `ceil`
- `wall`


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

- `floor`
- `ceil`
- `wall`


---

## Footnotes

[1:Explanation]
The `Math.random()` function returns a random number between 0 and 1 (inclusive of 0 but non-inclusive of 1). By multiplying this with the length of the array (`3`), we will return a random number `x` which has the following bounds `0 < x < 2.99999...`. If we call `Math.floor()` to `x`, the result will be a random number between `0` and `2` inclusively.
 
