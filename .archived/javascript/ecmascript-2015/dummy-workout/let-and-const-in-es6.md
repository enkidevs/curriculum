---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: feature
links:
  - '[github.com](https://github.com/lukehoban/es6features#arrows){website}'
  - '[www.2ality.com](http://www.2ality.com/2015/02/es6-scoping.html){website}'
  - >-
    [MDN -
    Let](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let){website}
  - >-
    [MDN -
    Const](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# `let` and `const` in ES6


---

## Content

ES6 introduces `let` and `const`. You can use these to create variables that are **block-scoped**.

In ES5 `var` variables are **function-scoped**.

You can use `const` to create **constant**  variables:

    'use strict'; // needed
    const c = 'Enki';
    c = 'Noki'; // Error

This does not mean the variable is *immutable*, just that it cannot be reassigned.

In a loop the `const` variable is created again in each iteration, so it can be given a different value each time.

You can use `let` to create **mutable** variables. If you declare a variable in a loop using `let`, you get a new binding for each iteration. This can be used in `for`, `for-in` and `for-of` loops:

```
for (let i=0; i < 3; i++) {
    ...
}

```


---

## Practice

`const` can be used to create ??? variables, whereas `let` can be used to create ??? variables. `const` and `let` can be used to create ???-scoped variables.

- immutable
- mutable
- block


---

## Revision

What must be used to create a **constant, immutable** variable?

???

- const
- var
- let
 
