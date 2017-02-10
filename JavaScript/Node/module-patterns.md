# Module patterns
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: local-modules

links:

  - '[Node Module Patterns](https://darrenderidder.github.io/talks/ModulePatterns/#/5)'


---
## Content

Module patterns common practices when developing Node applications in a modular way. Module patterns allow code to be written in a pro-modular way, protecting the context of some modules whilst exposing the necessary modules and variables by attaching them to the global object.

There are a number of different Node module patterns, the simplest being the example shown in the previous insight, requiring a module with just a simple `console.log()` statement included.

Other module patterns are:

Exporting an anonymous function:
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
