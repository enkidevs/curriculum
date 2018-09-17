---
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  javascript.functions.5: 10

tags:
  - introduction
  - hoisting
  - variables
  - obscura

links:

  - >-
    [Site
    Point](https://www.sitepoint.com/demystifying-javascript-variable-scope-hoisting/){website}

aspects:
  - introduction
  - obscura


---

# Scope - Hoisting

---
## Content

In JavaScript, when you declare variables they are always processed first before any code is executed even if they are declared later in the code.

For example, if you have the following code:
```javascript
x=1;
var x;
```
This is actually executed as:
```javascript
var x;
x=1;
```
This process is called **hoisting** and it's considered best practice to declare variables at the top of the scope they are declared in.

In practice, hoisting will rarely impact you but you should be aware it exists and some programs called **linters** (a linter checks code for style and rule breaches) will insist on variables being declared first.

---
## Revision

What does **hoisting** mean?


???

* Variable declarations are processed before code is executed
* You must first declare variables before methods
* A general rule for **linters**
* You can have multiple variables with the same name
