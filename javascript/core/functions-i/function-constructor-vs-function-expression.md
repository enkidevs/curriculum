# Function constructor vs. function expression
author: NomaDube

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

standards:
  js.functions.0: 10
  js.functions.1: 10
  js.functions.3: 10
  js.functions.4: 10

tags:
  - introduction
  - workout

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions#Function_constructor_vs._function_declaration_vs._function_expression){website}

---
## Content

The concepts of constructors, declaration and expressions are often misused. Here is the official terminology according to MDN:

Function defined with the `function` *constructor* assigned to the variable `multiply`:

```
function multiply(x, y) {
   return x * y;
}

```

Function *expression* of an anonymous function assigned to the variable `multiply`:

```
var multiply = function(x, y) {
   return x * y;
}

```

Function *expression* of a `function` named `mult` assigned to the variable `multiply`:

```
var multiply = function mult(x, y) {
   return x * y;
};

```

---
## Practice

What is the following code? ???

```javascript
var multiply = function times(x, y) {
   return x * y;
};
```

* A function expression of a function named times assigned to the variable multiply.
* A function times being declared.
* Function expression of an anonymous function.

---
## Revision

What is the following?
```javascript
var multiply = function(x, y) {
   return x * y;
}
```

???

*function expression of an anonymous function
*function defined with `function` constructor
*function expression of a `function` named `mult`
*all
*none
