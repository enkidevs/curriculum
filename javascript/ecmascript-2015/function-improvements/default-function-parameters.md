---
author: NomaDube

levels:
  - basic
  - advanced
  - medium

type: normal

category: feature

aspects:
  - introduction
  - new
  - workout

tags:
  - es6
  - functions

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Default_parameters){website}'

---
# Default function parameters

---
## Content

As of ES6, Functions can be defined with default values. These values will be used if no argument (or `undefined`) is passed.

```javascript
function setColor(element, color = 'pink'){
  element.style.backgroundColor = color;
}
setColor(divA);
setColor(divB, undefined);
setColor(divC, 'blue');
```

Here, `divA` and `divB` will both be `pink`  and `divC` will be `blue`.

---
## Practice

Complete the next function definition such that the function call below is true:

```javascript
function cube(??? ??? ???) {
  return number * number * number
}
cube() // 0
```

* number
* =
* 0
* 1
* default
* n
* int
* const
* let
* -1

---
## Revision

What will be the output of this code?

```javascript
function square(a = 1) {
  return a * a;
}

console.log(square());
// ???
```

* 1
* 2
* error
* undefined
* null
 
