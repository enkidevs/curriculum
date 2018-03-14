---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know

tags:

  - introduction

  - es6

  - memory


links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Statements/const){website}'

inAlgoPool:

---

# Const (Part 1)

---
## Content

The *`const`* (constant) keyword is new to ES6 and creates a variable that cannot be reassigned.

When declaring a constant variable you must assign an initial value otherwise you
will receive an error.

To declare a constant use the *`const`* keyword where you would have used *`var`*:

```
const year = 2016;
```
Once a `const` is declared any attempts to reassign the value will cause an error:

```
year = 2017; //error
year = "future"; //error
```
`const`s can exist in different scopes for example if we had already declared a `const` variable called `year` it is valid to declare another as long as it exists in another scope:

```
const year=2015;

if(1==1){
   const year = 2016; //valid
}
```

