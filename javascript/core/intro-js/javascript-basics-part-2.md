---
author: nem035

levels:
  - beginner

type: normal

category: must-know

inAlgoPool: false

standards:
  javascript.functions.5: 10

tags:
  - introduction

aspects:
  - introduction


---
# JavaScript Basics - Part 2

---
## Content

Like most programming languages, JavaScript has a number of syntax rules that must be adhered to.

### Semicolon

In EcmaScript it is best practice to add a semicolon at the end of a statement:

```javascript
var company="enki";
```

It’s not strictly necessary to do this as the parser will try to determine the end of a statement and add a semicolon automatically. However, it will help you be sure that the code runs as expected because automatic semicolon insertion sometimes causes errors.

### Variables

Variables are declared with the `var` operator which creates a variable in the *function scope*.

For example, if this is used inside a function then the variable will exist only inside the function:

```javascript
function hello(){
   var company = "enki";
}
// variable out of scope here
```

If you omit the `var` keyword and are not in strict mode then a variable will still be declared but it will be declared in global scope. When this occurs on a web page, global scope is the `window` object.

Not using `var` is a very bad idea as it is easy for variables to overwrite (sometimes called clobber) other variables.

---
## Practice

Which scope are `var`s defined in?

???

* function
* global
* window
* strict

---
## Revision

What operator is used to declare a variable in the *function scope*?

```javascript
??? answer = 42;
```

* var
* variable
* const
* string
* int
* double
 
