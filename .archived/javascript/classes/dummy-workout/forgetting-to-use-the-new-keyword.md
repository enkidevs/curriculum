---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - >-
    [javascriptplayground.com](http://javascriptplayground.com/blog/2012/12/the-new-keyword-in-javascript/){website}

---
# Forgetting to use the `new` keyword

---
## Content

The `new` keyword creates and instantiates  a new instance of the function it was called with.

```JavaScript
function Test() {
  this.desc = "Enki explains best...";
}
```
Without the `new` keyword `testA` will be `undefined`:
```
var testA = Test();
console.log(testA.desc);
// undefined
```
Using the `new` keyword creates and instantiates the new `Test` instance's context:
```
var testB = new Test();
console.log(testB.desc);
// Enki explains best...
```
With *ES6* classes using `new` is mandatory.
If omitted, a `TypeError` is thrown.
```
class Test {}
let ta = new Test(); // OK
let tb = Test();     // wrong!
// TypeError: class constructors
// must be invoked with |new|
```

---
## Practice

Which line raises a `TypeError` in **ES6**?
```javascript
class Enki {}//1
let e1 = new Enki(); //2
let e2 = Enki(); //3
```
???

* 3
* 1
* none

---
## Revision

Which line raises a `TypeError` in **ES6**?
```javascript
class Enki {}//1
let e1 = new Enki(); //2
let e2 = Enki(); //3
```
???

* 3
* 1
* none
