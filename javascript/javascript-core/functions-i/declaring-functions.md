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

# Declaring Functions


---

## Content

JavaScript supports many different ways of declaring functions.

The most common is the *function declaration*:

```js
// function to add 2 parameters
function add(x, y){
  return x + y;
}

add(1,2); // 3
```

**Return Values**

In the above example, we specified that we would return the function argument x plus argument y.

If we did not specify a return value in the above example, then the function would return *undefined* e.g.

```js
function add(x, y){
  x + y;
}

add(1,2); // undefined
```

Note that there are some more complex cases where a function will not return *undefined* when no return is specified.


---

## Practice

What would the following snippet print?

```js
function mult(x, y){
  let z = x * x;
}

console.log(mult(2,3));
???
```

- `undefined`
- `4`
- `9`
- `6`
- `error`


---

## Revision

What would the following snippet print?

```js
function add(x, y){
  let sum = x + y;
}

console.log(add(2,3));
???
```

- `undefined`
- `5`
- `false`
- `error`
 
