# `exports` vs. `module.exports` in **Node**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - >-
    [www.hacksparrow.com](http://www.hacksparrow.com/node-js-exports-vs-module-exports.html){website}

---
## Content

Exporting a module in **Node** can be done in different ways. The most common is using the `exports` object:
``` javascript
//what is exported (other.js)
exports.say = function() {
    console.log('Hello from Enki!');
};
//how to import
var sample = require('./other.js');
sample.say(); // 'Hello from Enki!'

```

However, `exports` is just a helper for `module.exports`. The latter is ultimately returned by your module when called. `exports` only collects properties and attaches them to `module.exports` if and only if it doesn't have something on it already.

```javascript
module.exports = 'Oops!';
exports.say = function() {
  console.log('Hello from Enki!'); }
```

If we import it the same way as above, this will result in a `TypeError` because `module.exports` already had something in it.
Export an array with `module.exports`:
```javascript
module.exports = [ 'A', 'B', 'C'];

var sample = require('./other.js');
console.log(sample[2]); // 'C'
```

---
## Practice

What is the output of the following JavaScript code? ???

```javascript
module.exports = ['a', 'k', 'K', 'y', 'a'];

var test = require('./other.js');

console.log(test[2]);
console.log(test[4]);
console.log(test[3]);
console.log(test[0]);
console.log(test[1]);
```
* Kayak
* kayak
* kayaK
* ayakK
* yakaK

---
## Revision

`exports` is a helper for?
???
* `module.exports`
* `module.imports`
* `module`
* `imports`
