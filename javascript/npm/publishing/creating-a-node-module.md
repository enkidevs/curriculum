---
author: mihaiberq
type: normal
category: how-to
tags:
  - workout
  - deep
  - new
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Creating a Node Module


---

## Content

After you have set up the *package.json* file, it's time to start coding. A npm module is a regular JavaScript file that must follow the *CommonJS* module spec.

A module contains an object called **module**, that has a read-only `id` property used to identify the module and an `exports` object, containing all the methods/constants to be exported. Here's an example:

```javascript
// math.js
module.exports.pow = function(a,b){
  var res = 1;
  for(var i=0;i<b;++i){
    res *= a;
  }
  return res;
}
```

Whenever you import the module in another file using the `require` function, it returns the exported set of functions and constants:

```javascript
// app.js
var math = require('./math');
console.log(math.pow(3,4));
```

Using node to run `app.js` yields:

```bash
node app.js
81
```


---

## Practice

In order for the JavaScript file to be a module, it must have

???

- a non-empty exports object
- at least one function
- constants
- at least one non-void function


---

## Revision

Usually, a module id is

???

- the name of the main JavaScript file
- the name of the first function
- defined in the package.json
