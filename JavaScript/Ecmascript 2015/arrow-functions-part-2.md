# Arrow Functions (Part 2)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

When using *arrow functions* and more complex expressions you must enclose the expression with curly brackets:

```
var func = 
x => {x++; return x * 2; }
```

If you want to return an object then be sure to ensure the return object in curly brackets is also wrapped in brackets so the interpreter knows how to process the code e.g.:

```
 var obj = () =>
 ({firstname:"John",lastname: "Smith"});
```

Arrow functions work particularly well when used with methods such as map & filter as allow you to succinctly declare your intention:

```
var firstNames = 
people.map(p => p.firstname);
```