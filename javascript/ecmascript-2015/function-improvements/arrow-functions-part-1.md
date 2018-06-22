---
author: lizTheDeveloper

levels:

  - beginner

  - basic

type: normal

category: feature

inAlgoPool: false

tags:

  - es6

  - workout

  - functions


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions){website}'


aspects:
  - workout


---

# Arrow Functions (Part 1)

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
let add = (x,y) => { x + y }
add(2,4); //6
```

---
## Practice

Write a function that will take the array `planets` and output `[5, 6, 5, 7]`:
```
foo() => {
  var planets = [
    'Earth',
    'Saturn',
    'Pluto',
    'Jupiter'
  ];

  return planets.map(??? => ???);
}
```

* `planet`
* `return planet.length`
* `planet.length`
* `{planet}`

---
## Revision

Filter out all of the odd numbers,
such that only even numbers are present
in the array.

```
var integers = [1,2,3,4,5,6,7,8,9];

integers.filter(???);
```


* `(n) => {return n % 2 == 0}`
* `n => {n % 2 === 0}`
* `n => n % 2 !== 0`
* `{n} => {n % 2 != 0}`
* `n => [return n % 2 === 0]`

 
