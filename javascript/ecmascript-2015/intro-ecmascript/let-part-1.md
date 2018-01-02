# Let (Part 1)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: tip

---
## Content

*let* declares a variable and is used in a similar method to *var*.

However a variable declared using let has the important difference that the variable **exists only in block scope**.

This means you can do things like this: 

```
function test(){
   //scope
   let company="Enki";

   if(1==1){
      //another scope
      let company="Apple";
      console.log(company); //Apple
   }

   console.log(company); //Enki
}
```

When *let* is used outside a function it also will not create a global variable:

```
let notGlobal="Enki";
console.log(window.notGlobal);
//undefined
```
