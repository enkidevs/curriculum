---
author: tommarshall
levels:
  - beginner
  - basic
  - medium
  - advanced
type: normal
category: must-know
standards:
  javascript.use-modules.1: 20
  javascript.identify-common-design-patterns.6: 10
tags: []
links:
  - >-
    [Node Module
    Patterns](https://darrenderidder.github.io/talks/ModulePatterns/#/5){website}
parent: local-modules
aspects:
  - introduction
  - workout
---

# Module patterns


---

## Content

Module patterns are common practices when developing Node applications in a modular way. Module patterns allow code to be written in a pro-modular way, protecting the context of some modules whilst exposing the necessary modules and variables by attaching them to the global object.

There are a number of different Node module patterns, the simplest being the example shown in the previous insight, requiring a module with just a simple `console.log()` statement included.

Other module patterns are:

Exporting an anonymous function:

```javascript
// module.js
module.exports = function() {

  console.log('Anonymous!');

}

// main.js
var func = require('./module.js');
func();
```

Named functions can be exported in a similar way, however notice differences when defining the function and requiring the module:

```javascript
// module.js
exports.foo = function() {

  console.log('Named!');

}

// main.js
var foo = require('./module.js').foo;
foo();
```


---

## Practice

What must be used when exporting an anonymous function?
???

* module.exports
* require
* exports


---

## Revision

Complete the code snippet to export the named function:

```javascript
// module.js
exports.foo = function() {

  console.log('Named!');

}

// main.js
var foo = require('./module.js'???;
foo();
```

* ).foo
* )
* ).module
* ).exports

