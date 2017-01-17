# Why use symbols?
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

forAlgo: false

category: must-know

links:

---
## Content

As symbols are always unique they are great for library authors to defining values without fear of overwriting anything existing e.g.

```
var companyKey = Symbol();
var obj = {}
window[companyKey] = "Enki";
```

They can also be used as a kind of constant within an application:

```
const highDiscountLevel = Symbol();
```

This is better than just defining a const string as there would be nothing to stop a developer doing the following:

```
const highDiscountLevel ="high";

//uh oh 2 const's 
//representing same thing
const anotherDiscountLevel="high";
```

Probably Symbols most important purpose is to introduce non-breaking changes to JavaScript let's talk about this next.

---