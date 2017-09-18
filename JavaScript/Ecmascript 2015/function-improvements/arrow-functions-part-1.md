# Arrow Functions (Part 1)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[jsbin.com](https://jsbin.com){website}'

---
## Content

Arrow functions (called lambda functions in some other languages) provide a short hand syntax to declare functions expressions and can save some tedious code around EcmaScript's *this* keyword which we will look at in more advanced workouts.

The arrow function (sometimes referred to as "fat arrow") has two parts placed either side of *=>* e.g. 
```
(optional) inputs => expression
```
 
On the left hand side are the arguments (which are optional) and the right hand side contains the expression itself.

Below we use arrow function syntax to declare a function that accepts two parameters (x and y) and will add them together:

```
var add = (x,y) => x+y
add(2,4); //6
```

**Shortening arrow functions**

If a function has no arguments you can shorten it to:
```
var pi = () => 3.14;
```

Or if a function has a single argument you can drop the parenthesis entirely:

```
var doubleInput = x => x*2;
```
