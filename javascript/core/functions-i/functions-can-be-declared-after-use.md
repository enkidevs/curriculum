---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

standards:

  javascript.functions.8: 10

tags:

  - introduction

aspects:
  - introduction


---

# Functions can be declared after use

---
## Content

Function **declarations** load before other code is executed. This means that the function can be declared after it has been used.

For example:
```
alert(foo()); // Alerts 'Enki'.
// Function declaration
function foo() { return 'Enki'; }
```

If however a function **expression** is used rather than a function **declaration** an error will be produced:

```
alert(foo()); // Error!
// Function expression
var foo = function() { return 'Enki'; }
```  
This is because function **expressions** are evaluated from the top-down as normal.

---
## Practice

Give the output:
```
alert(foo()); // ???
var foo = function() { return 'Enki'; }
```

* error
* alerts 'Enki'

---
## Revision

Give the output:
```
alert(foo()); // ???
function foo() { return 'Enki'; }
```

* alerts 'Enki'
* error
 
