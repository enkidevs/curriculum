# JavaScript Basics - Part 2
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

standards:
  js.functions.5: 10

tags:
  - introduction
  - workout

---
## Content

Like most programming languages, JavaScript has a number of syntax rules that must be adhered to.

**Semicolon**

In EcmaScript it is best practice to add a semicolon at the end of a statement:

```
var company="enki";
```

It’s not strictly necessary to do this as the parser will try to determine the end of a statement automatically. However, it will help you be sure that the code runs as expected.

**Variables**

Variables are declared with the **var** operator which creates a variable in the *current scope*.

For example, if this is used inside a function then the variable will exist only inside the function:

```
function hello(){
   var company="enki";
}
//variable out of scope
```

If you omit the var keyword and are not in strict mode then a variable will still be declared but it will be declared in global scope. When this occurs on a web page, global scope is the window object.

Not using var is a very bad idea as it is easy for variables to overwrite (sometimes called clobber) other variables.

---
## Revision

What operator is used to declare a variable in the *current scope*?

```
??? answer = 42;
```

*`var`
*`variable`
*`const`
*`string`
*`int`
*`double`
