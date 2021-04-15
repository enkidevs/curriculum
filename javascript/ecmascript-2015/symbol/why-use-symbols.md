---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Why use symbols?


---

## Content

As symbols are always unique they are great for library authors to defining values without fear of overwriting anything existing e.g.

```javascript
var companyKey = Symbol();
var obj = {}
window[companyKey] = "Enki";
```

They can also be used as a kind of constant within an application:

```javascript
const highDiscountLevel = Symbol();
```

This is better than just defining a const string as there would be nothing to stop a developer doing the following:

```javascript
const highDiscountLevel = "high";

//uh oh 2 consts
//representing same thing
const anotherDiscountLevel = "high";
```

Probably Symbols most important purpose is to introduce non-breaking changes to JavaScript let's talk about this next.


---

## Practice

Which of the following statements is false about Symbols?

???

- Symbols can be overwritten
- Symbols can be used as constants
- Symbols are immutable


---

## Revision

Which of the following is true about Symbols?

???

- Symbols are unique and immutable
- Symbols can be overwritten
- Symbols can't be used by libraries
- Symbols are unique and mutable
 
