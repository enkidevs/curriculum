---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - new 
  - workout

inAlgoPool: false

links:

  - '[MDN - Import](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import){website}'
  - '[MDN - Export](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/export){website}'

---
# Introducing Modules

---
## Content

A major issue in ECMAScript is lack of a good way to divide up and reuse code.

Over time the community has developed a number of approaches to this issue ranging from custom solutions to the standardized (and incompatible) **CommonJS** and **Asyncronous Module Definition (AMD)**.

ES6 introduces native support for modules and was influenced by both the CommonJS and AMD approaches.

It is important to note that at the time of writing no browser has native support for modules so this functionality is only available through transpillers or environments such as Node.

### Usage

Let's create a module called `mathFuncs`.

A module always exists in its own file. You cannot put two modules in one file.

We will first create a file called `mathFuncs.js` and add the following code to it:

```javascript
export function double(x) {
  return x * 2;
}
}
```

Next when we want to use this code we tell JavaScript we want to import it:

```javascript
import * as mathFuncs from 'mathFuncs';
console.log(mathFuncs.double(4)); //8
```

Let's recap..

First we declare our module in a file called `mathFuncs.js`. This is the name of our module.

Next we declare that we are exporting a function called double using the **export** keyword. If we don’t use **export** the function wont be available for usage directly.

We now want to use this functionality in another file so we use the keyword **import** and say we want to import everything (that's the import * bit) from the module and access this through the object we will call mathFuncs.

Finally we use this functionality with the call mathFuncs.double.

---
## Practice

How do you expose a method from a module?

```javascript
// myModule.js

??? function myFunc() {
  // function code here
}
```

* export
* exports
* module.exports
* exports.
* expose
* import

---
## Revision

Fill in the missing keywords for importing and renaming a module at the same time:

```javascript
??? module ???
  moduleRename ??? 'path';
```

* import
* as
* from
* new
* require
* like
* imports
* export
* exports
 
