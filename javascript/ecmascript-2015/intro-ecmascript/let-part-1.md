---
author: alexjmackey

levels:
  - beginner

type: normal

category: tip

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let){website}'

---
# Let (Part 1)

---
## Content

*let* declares a variable and is used in a similar method to *var*.

However, a variable declared using let has the critical difference that the variable **exists only in block scope**.

This means you can do things like this:

```javascript
function test(){
   //scope
   let company="Enki";

   if (1 == 1){
      //another scope
      let company = "Apple";
      console.log(company); //Apple
   }
   console.log(company); //Enki
}
```

When *let* is used outside a function it also will not create a global variable, contrary to `var`s behavior:

```javascript
var global = 'enki';
console.log(window.global);
// enki

let notGlobal="Enki";
console.log(window.notGlobal);
// undefined
```

---
## Practice

Fill in the missing gaps with the output of the log statements:

```javascript
let year = 2017
{
  let year = 2018
  console.log(year)
  // ???
}
console.log(year)
// ???
```

* 2018
* 2017
* error
* year

---
## Revision

What is the output of the log statement (considering it's run in a browser):

```javascript
let enki = 'enki'
console.log(window.enki)
// ???
```

* undefined
* enki
* error
 
