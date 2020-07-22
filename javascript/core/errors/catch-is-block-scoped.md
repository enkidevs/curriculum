---
author: rosielowther
type: normal
category: caveats
tags:
  - workout
  - deep
  - obscura
parent: no-block-scope
---

# `catch` is block scoped


---

## Content

The `catch` clause of a `try...catch` statement is **block** scoped. This is different to the rest of JavaScript which is **function** scoped.  

```plain-text
try {
  // ...
}
catch (err) {
   // err is block scoped
}
```

Many linters fail to recognise that it is valid to have multiple  `try...catch` statements in the same scope, all using `err`, without it being a repeated variable declaration.


---

## Practice

What scope is the catch clause of a try/catch statement in? ???

- block scoped.
- function scoped.


---

## Revision

Even though Javascript is function scoped, the variable in ??? is block scoped.

- the catch clause
- the try clause
- a for loop
 
