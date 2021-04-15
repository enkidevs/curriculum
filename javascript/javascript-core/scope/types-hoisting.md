---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [Site
    Point](https://www.sitepoint.com/demystifying-javascript-variable-scope-hoisting/){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Scope - Hoisting


---

## Content

In JavaScript, when you declare variables using `var` they are always executed first before any value initializations.

For example, if you have the following code:

```javascript
x = 1;
var x;
```

This is actually executed as:

```javascript
var x;
x = 1;
```

This process is called **hoisting**.

In practice, hoisting will rarely impact you but you should be aware it exists because problems could happen:

```js
var x = 5;

function foo() {
  if (1 === 1) {
    // variable x is hoisted
    // to the top of foo
    // and thus collides with
    // the x defined at the
    // top and overwrites it
    var x = 3;
  }
  
  console.log(x); // 3
}

foo();
```

There are also programs called **linters** (a linter checks code for style and rule breaches) that will help you ensure that variables are being declared before they are used.


---

## Revision

What does **hoisting** mean?

???

- Variable declarations using var are processed before their initializations
- Variable declarations must come before method declarations
- A general rule for special programs called linters
- Variable declarations can have different names
