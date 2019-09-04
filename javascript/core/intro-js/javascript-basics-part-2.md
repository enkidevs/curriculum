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

In ECMAScript it is best practice to add a semicolon at the end of a statement:

```javascript
var company="enki";
```

It’s not strictly necessary to do this as the parser will try to determine the end of a statement and add a semicolon automatically. However, it will help you be sure that the code runs as expected because automatic semicolon insertion sometimes causes errors.

### Variables

Variables are essential for programming. They are used to store a modifiable value and are given a name. Declare a variable in JavaScript with the `var` keyword.

```javascript
var firstName="John";
```

If `var` is omitted the variable will still be created and referenced, but it will behave in unintended ways because of a concept in JavaScript called scope.

JavaScript has two scopes, global and local. If a variable is defined *outside* of a function then it is in the global scope which means it can be read and changed throughout the program. If a variable is declared *inside* a function then it will only "exist" or be accessible inside the function.  For example, here company is declared inside a function and will exist only inside the function:


```javascript
function hello(){
   var company="enki";
   console.log(company); 
   // "enki"
}
// variable out of scope
console.log(company); 
// ReferenceError: company is not defined
```

---
## Practice

Which will define a variable in the global scope?

```
// Option A
var answer = 42;
```

```
// Option B
function globalFunction() {
  var answer = 42;
}
```

```
// Option C
function answer() {
  var answer = 42;
  return answer;
}
```


???

* Option A
* Option B
* Option C
* None of these

---
## Revision

What will log to the console?

```javascript
function getAnswers(){
  var answer = 42
}
console.log(answer)
```

???

* ReferenceError: answer is not defined
* 42
* answer
* local

 

 
