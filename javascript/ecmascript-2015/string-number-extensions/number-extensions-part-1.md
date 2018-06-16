---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number){website}'


---
# Number Extensions (Part 1)

---
## Content

Number benefits from a number of new methods saving you from writing your own potentially error prone implementation.

There are a large number so here are some of the ones that are likely to have more use:

### Number.isFinite

Determines whether a number is finite (finite means that it could be measured or have a value).

```javascript
Number.isFinite(Infinity); //false
Number.isFinite(100); //true
```

### Number.isInteger

Determines if a number is an integer or not.

```javascript
Number.isInteger(1); // true
Number.isInteger(0.1); //false
```

### Number.isNaN

Before ES6 it was difficult to test if a value was equal to *NaN* (Not a number). This is because NaN == NaN evaluates to false.

Whilst a global *isNaN* function has existed in previous versions it has the issue that it converts values which makes it hard to test if something is really *NaN*:

```javascript
isNaN("Enki") == true; //true
```

Number.isNaN allows you to easily test if a number really is NaN:

```javascript
Number.isNaN(1); //false
Number.isNaN(Number.NaN); //true
```

---
## Practice

What is the output of the following two calls?

```javascript
const enki = 'enki';

isNaN(enki)
Number.isNaN(enki)
// ???
```

* true, false
* false, true
* false, false
* true, true

---
## Revision

Complete the missing calls with methods introduced in ES6 such that all the statements are true:

```javascript

Number.???(5) == true
???.???(2.71) == false
Number.???(Number.NaN) == true
```

* isFinite
* Number
* isInteger
* isNaN
* isReal
* String
* isRatio
* NaN
* isNotNaN
 
