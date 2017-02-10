# Requiring and Exporting
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: what-are-node-modules

links:
- '[Node Modules](https://www.bennadel.com/blog/2169-where-does-node-js-and-require-look-for-modules.htm)'

---
## Content

To load, cache and use a module you must `require` it into your **Node** application. The keyword `require` is used for loading modules and its return value is normally assigned to a variable, for example:

```
var module = require(‘./example.js’);
```

`exports` or `module.exports` by default are included by default in all JavaScript files in a Node application as a special object. `exports` is an object exposed as a module, whereas `module` is a variable representing the current module. Therefore what you assign to either `exports` or `module.exports` will eventually be exposed by the module.

Take *sampleModule.js*:
```
module.exports = “Required and exported!”;
```
Note: `exports`  could have been used instead of `module.exports` to the same effect.

Importing *sampleModule.js* into a new JavaScript file *main.js*:
```
var test = require(‘./sampleModule.js’);
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

Complete the code snippet to import `module.js`:
```
var mod = ???('./module.js');
```

* `require`
* `export`
* `load`
