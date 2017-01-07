# Introducing Modules
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

links:

---
## Content

A major omission in EcmaScripts functionality has traditionally been lack of support for an inbuilt module system.

Over time the community has developed a number of approaches to this issue ranging from custom solutions to the standardized (and incompatible) CommonJS and Asyncronous Module Definition (AMD).

ES6 introduces native support for a module system and was influenced by both the CommonJS and AMD approaches.

It is important to note that at this time no browser has native support for modules so this functionality is only available through transpillers or environments such as Node.

**Usage**

A module always exists in its own file. You cannot put two modules in one file.

Let's create a module called mathFuncs.

We will first create a file called mathFuncs.js and add the following code to it:
```
export function double(x) {
    return x * 2;
} 
```

Next when we want to use this code we tell JavaScript we want to import it:
```
import * as mathFuncs from ‘mathFuncs’;
console.log(mathFuncs.double(4)); // 8
```

Let's recap..

First we declare our module in a file called mathFuncs.js. This is the name of our module.

Next we declare that we are exporting a function called double using the export keyword. If we don’t use the export keyword the function wont be available for usage directly.

We now want to use this functionality in another file so we use the keyword import and say we want to import everything (that’s the import * bit) from the module and access this through the object we will call mathFuncs.
 
Finally we use this functionality with the call mathFuncs.double.
---