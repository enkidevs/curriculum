# Scope and strict mode
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - '[john-dugan.com](https://john-dugan.com/hoisting-in-javascript/){website}'

---
## Content

In **non-strict mode**, a variable not found in a **local** scope will be created in the **global** scope.

For example, the variable `baz` is undeclared in the scope of the function `bar()` so will be created in the global scope:
```javascript
function bar(foo){
    foo = "hello"; // local scope
    baz = "world"; // global scope
}
```
This occurs on **execution** of the code rather than in compilation.

In **strict mode** this does not happen and would give a reference error of `undeclared`. 

`undeclared` means that there is no present declaration of the variable in any of the scopes.

Note: this is not the same as `undefined`.

It is recommended that you use strict mode for your code to prevent **variable leaks**.

---
## Practice

Assuming the scopes specified in the comments, does the snippet use **non-strict** or **strict** mode?
```javascript
function bar(foo){
    foo = "hello"; // local scope
    baz = "world"; // global scope
}
```

???

*`non-strict`
*`strict`

---
## Revision

Non-strict mode allows the automate creation of a variable in ??? scope, while *strict mode* would throw an error if the ??? variable is not declared.
*global
*local
*strict