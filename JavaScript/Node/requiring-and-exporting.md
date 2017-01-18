# Requiring and Exporting
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

---
## Content

To load, cache and use a module you must `require` it into your Node application, the keyword `require` is used for loading modules, its return value is normally assigned to a variable, for example:

```
var module = require(‘./example.js’);
```

`exports` or `module.exports` by default are included in all JavaScript files in a Node application as a special object. `exports` is an object exposed as module, whereas `module` is a variable representing the current module. Therefore what you assign to either `exports` or `module.exports` is exposed as a module.

Take *module.js*:
```
module.exports = “Required and exported!”;
```
Note: `exports`  could have been used instead of `module.exports` to the same effect.

Importing *module.js* into a new JavaScript file *main.js*:
```
var test = require(‘./module.js’);
console.log(test);
```
Running *main.js* from a REPL terminal returns the following:
```
$ node main.js
Required and exported!
```

---
## Practice

Which of the following is included in all JavaScript files by default?
???

* `module.exports`
* `module.module`
* `module.object`

---
## Revision

Complete the code snippet to load `module.js`:
```
var mod = ???('./module.js');
```

* `require`
* `export`
* `load`
