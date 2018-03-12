---
author: NomaDube

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - es6

  - functions


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Default_parameters){website}'


---
## Content
# Default function parameters

As of ES6, Functions can be defined with default values. These values will be used if no argument (or `undefined`) is passed. 


```
function setColor(element, color = 'pink'){
  element.style.backgroundColor = color;
}
setColor(divA);
setColor(divB, undefined);
setColor(divC, 'blue');

```
Here, `divA` and `divB` will both be `pink`  and `divC` will be `blue`.

---
## Revision

What will be printed?
```javascript
function square(a = 1) {
  return a * a;
}

console.log(square());
// ???
```

* `1`
* `2`
* `error`
* `undefined`
* `null`

