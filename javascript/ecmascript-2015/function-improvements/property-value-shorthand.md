# Property Value Shorthand
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - '[benmvp.com](http://www.benmvp.com/learning-es6-enhanced-object-literals/){website}'
  
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Object_initializer){website}'
---
## Content

It is very common to return an object from a function with a property the same name as a source value declared elsewhere e.g. 

```
function test(){
   var name="Enki";

   return {
      name: name
   }
}

```

ES6 provides a convenient shortcut to do this that allows you to drop the property name if you want it to be the same as the source variable:

```
function test(){
   var name = "enki";

   return{
      name
   };
}

test(); //{ name: "enki" }
```

Note an exception will be thrown at run time if you  specify a value that doesn’t exist in your return object.
