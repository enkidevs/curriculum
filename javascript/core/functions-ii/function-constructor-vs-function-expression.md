---
author: NomaDube
type: normal
category: feature
links:
  - >-
    [Constructor vs. Declaration vs.
    Expression](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions#Constructor_vs._declaration_vs._expression){documentation}
---

# Function Constructor vs. Function Expression


---

## Content

The concepts of constructors, declaration and expressions are often misused. Here is the official terminology according to MDN:

A function defined with the `function` *constructor* assigned to the variable `multiply`:

```plain-text
function multiply(x, y) {
  return x * y;
}
```

Function *expression* of an anonymous function assigned to the variable `multiply`:

```plain-text
let multiply = function(x, y) {
  return x * y;
}
```

Function *expression* of a `function` named `mult` assigned to the variable `multiply`:

```plain-text
let multiply = function mult(x, y) {
  return x * y;
};
```


---

## Practice

What is the following code?

```plain-text
let multiply = function times(x, y) {
  return x * y;
};
```

???

- A function expression of a function named `times` assigned to the variable `multiply`.
- A function `times` being declared.
- Function expression of an anonymous function.


---

## Revision

What is the following?

```plain-text
let multiply = function(x, y) {
  return x * y;
}
```

???

- function expression of an anonymous function
- function defined with `function` constructor
- function expression of a `function` named `mult`
- all
- none
