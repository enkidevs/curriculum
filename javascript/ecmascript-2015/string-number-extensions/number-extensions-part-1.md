# Number Extensions (Part 1)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number){website}'

---
## Content

Number benefits from a number of new methods saving you from writing your own potentially error prone implementation.

There are a large number so here are some of the ones that are likely to have more use: 

**Number.isFinite**

Determines whether a number is finite (finite means that it could be measured or have a value).

```
Number.isFinite(Infinity); //false
Number.isFinite(100); //true
```


**Number.isInteger**

Determines if a number is an integer or not.
```
Number.isInteger(1); // true
Number.isInteger(0.1); //false
```

**Number.isNaN**

Before ES6 it was difficult to test if a value was equal to *NaN* (Not a number). This is because NaN == NaN evaluates to false.

Whilst a global *isNaN* function has existed in previous versions it has the issue that it converts values which makes it hard to test if something is really *NaN*:

```
isNaN("Enki")==true; //true
```

Number.isNaN allows you to easily test if a number really is NaN:

```
Number.isNaN(1); //false
Number.isNaN(Number.NaN); //true
```
