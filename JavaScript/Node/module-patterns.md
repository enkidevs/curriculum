# Module patterns
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

There are a number of different Node module patterns, the simplest being the example shown in the previous insight, requiring a module with just a simple `console.log()` statement included.

To export an anonymous function, use `module.exports` like follows:
```
// module.js
module.exports = function() {

  console.log(‘Anonymous!’);

}

// main.js
var func = require(‘./module.js’);
func();
```

Named functions can be exported in a similar way, however notice differences when defining the function and requiring the module:
```
// module.js
exports.foo = function() {

  console.log(‘Named!’);

}

// main.js
var foo = require(./module.js’).foo;
foo();
```

---
## Practice

What must be used when exporting an anonymous function?
???

* `module.exports`
* `require`
* `exports`

---
## Revision

Complete the code snippet to export the named function:
```
// module.js
exports.foo = function() {

  console.log(‘Named!’);

}

// main.js
var foo = require(./module.js’???;
foo();
```

* `).foo`
* `)`
* `).module`
