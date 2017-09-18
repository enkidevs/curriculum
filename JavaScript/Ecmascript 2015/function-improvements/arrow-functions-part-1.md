# Arrow Functions (Part 1)
author: lizthedeveloper

levels:

  - beginner

  - basic

type: normal

inAlgoPool: false

category: feature

tags:

  - es6

  - workout

  - functions

links:

  - [MDN Guide to Arrow Functions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

---
## Content

**Arrow functions** (called lambda or "fat arrow" functions in some other languages) provide a shorthand syntax to declare function expression.

```
(parameters) => {}
```

The parenthesis are optional if there is a single parameter:

```
parameter => {}
```

The braces are optional if the returned expression is one line:

```
parameter => expression
```

Below we use arrow function syntax to declare a function that accepts two parameters (x and y) and will add them together:

```
let add = (x,y) => {x+y}
add(2,4); //6
```

---
## Practice

Complete the code challenge to map the array to: `[5, 6, 5, 7]`
```
var planets = [
  'Earth',
  'Saturn',
  'Pluto',
  'Jupiter'
];

planets.map(??? => ???);
```
* `planet`
* `(planet)`
* `{planet}`
* `planet.length`
* `{planet.length}`
* `(planet.length)`

---
## Revision

Filter out all of the odd numbers:

```
var integers = [1,2,3,4,5,6,7,8,9];

integers.filter(???);
```

* `(n) => {n % 2 == 0}`
* `n => {return n % 2 === 0}`
* `n => n % 2 === 0`
* `{n} => {n % 2 == 0}`
* `n => [return n % 2 === 0]`
