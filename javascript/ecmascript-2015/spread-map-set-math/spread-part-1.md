---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know


links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Spread_operator){website}'

inAlgoPool:

---

# Spread (Part 1)

---
## Content

The spread operator automatically assigns (or spreads out) the contents of an expression to multiple arguments, elements or variables which can save you some tedious assignment code. 

For example let’s say we have an array with 3 values we want to pass to a function accepting three arguments:

```
var test = [1,2,3];
function func(x, y, z){
...
}
```
We could of course call the function with values from the array as follows:

```
func(test[0],test[1],test[2]);
```

However we can use the spread operator to assign (or spread out) these values to the x, y and z parameters without explicitly defining where they should be assigned:

```
func(...test); //x=1, y=2, z=3
```

The spread operator can even be applied multiple times so if we had a function with 6 arguments we can use the spread operator twice if we wanted to reuse the input variables:

```
function someFunc(x, y, z, a, b, c){
...
}

someFunc(...test, ...test);
```

This saves some tedious and potentially error prone assignment code.

