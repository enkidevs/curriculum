---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Generators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Passing Values to Generators


---

## Content

Generator's `next` method also accepts a parameter.

When you pass in a parameter it is assigned to the result of the `yield` statement (if you don’t pass anything in it is `undefined`).

We could, for example, use this functionality to reset our number sequence when 0 is passed in:

```javascript
function* getGenerator() {
  let currentNumber = 1;

  while (currentNumber < 6) {
    let input = yield currentNumber++;
    if (input == 0) currentNumber = 1;
  }
}

var g = getGenerator();

g.next().value; // 1
g.next().value; // 2
g.next().value; // 3
g.next(0).value; // 1
```

There is also a gotcha to watch out for when passing values to generators.

This is best implemented with an example - the below function simply logs to the console any values passed in:

```javascript
function* getGenerator() {
  while (true) {
    console.log(yield);
  }
}
```

However, the first value we pass in will be ignored!

```javascript
let g = getGenerator();
g.next("a"); //ignored
g.next("b"); // b
```

This is because the first time we get our generator we are at the beginning of the function and there is nothing to log from the yield statement.

The solution is to simply call the generators next method once:

```javascript
let g = getGenerator();
g.next();
g.next("a") // a
g.next("b") // b
```


---

## Practice

Fill in the missing output of the following code snippet:

```javascript
function* myGen() {
  let toYield = 2;
  while (true) {
    const i = yield toYield;
    if (i) {
      toYield = i;
    }
  }
}

let z = myGen();
z.next();
// { value: ???, done: false}
z.next(4);
// { value: ???, done: false}
z.next(3);
// { value: ???, done: false}
```

- 2
- 4
- 3
- undefined
- 5
- null


---

## Revision

What happens when you pass a value to the `next` call of a generator?

???

- it is assigned to the result of the yield statement
- nothing
- `it instantly returns an object of the form {value: input, done: false}`
- it will throw an error
 
