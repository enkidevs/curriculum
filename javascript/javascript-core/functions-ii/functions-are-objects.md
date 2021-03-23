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
  context: standalone
---

# Functions Are Objects


---

## Content

Every function in JavaScript is also an object. 

This means we can assign a function to a variable which can then be used to execute the function. Function used as a value like this is called a *function expression*.

```js
let add = function enki(x, y){
  return x + y;
};

add(1, 2); // 3
```

In fact, we can think of functions as invocable (executable) objects.

This means that we can also pass function as arguments into other functions (the passed in functions are usually called "callbacks").

Consider this example: if we were creating a calculator, we could pass different calculation expressions into the `calc` function and avoid repeating the console logging code:

```js
function calc(expression){
  console.log(expression(2, 1));
}

let add = function a(x, y){
  return x + y;
}

let subtract = function s(x, y){
  return x - y;
}

calc(add); // 3
calc(subtract); // 1
```

We don’t even need to give our functions a name. 

A function without a name is called an anonymous function:

```js
let add = function (x, y){
  return x + y;
}

add(1, 2); // 3
```


---

## Practice

Complete the function expression in the following code snippet such that the code works correctly:

```js
??? add = ??? a(x, y, z){
  ??? x + y + z;
}

console.log(add(1, 2, 3)); 
```

- `let`
- `function`
- `return`
- `console.log`
- `get`
- `fn`
- `()`


---

## Revision

Complete the function expression in the following code snippet such that the code works correctly:

```js
??? x = ??? add(x, y, z){
  ??? x + y + z;
}
console.log(x(1, 2, 3)); 
```

- `let`
- `function`
- `return`
- `console.log`
- `get`
- `fn`
- `()`
 
