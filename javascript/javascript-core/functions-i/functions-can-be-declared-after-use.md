---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Functions Can Be Declared After Use


---

## Content

Function **declarations** load before other code is executed. This means that the function can be declared after it has been used.

For example:

```js
alert(foo()); // Alerts 'Enki'.
// Function declaration
function foo() { return 'Enki'; }
```

If however a function **expression** is used rather than a function **declaration** an error will be produced:

```js
alert(foo()); // Error!
// Function expression
var foo = function() { return 'Enki'; }
```

This is because function **expressions** are evaluated from the top-down as normal.


---

## Practice

Give the output:

```js
alert(foo()); // ???
var foo = function() { return 'Enki'; }
```

- error
- alerts 'Enki'


---

## Revision

Give the output:

```js
alert(foo()); // ???
function foo() { return 'Enki'; }
```

- alerts 'Enki'
- error
 
