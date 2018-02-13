# Let (Part 2)
author: alexjmackey

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know


links:
  
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let){website}'
  
---
## Content

*let* is particularly useful when used with loops and inner functions.

*let* solves an issue you may have come across before when attempting to add event handlers to multiple elements.  

The code below looks like it will output 0 1 2 3 4 to the console but will actually output 5 5 5 5 5.

```
var funcs=[];

for (var i = 0; i < 5; i++) {
   funcs.push(
      function(){console.log(i)}
   );
}

for(func of funcs){
   func();
}
//5 5 5 5 5
```
This happens because each function added to the array is referring to the same instance of *i*.

Variable *i* ends up being 5 at the end of the loop so we end up logging this final value in each function.

Now try changing the loop declaration to use the *let* keyword:

```
for (let i = 0; i < 5; i++) {
...
}
//0 1 2 3 4
```

The code will now run as expected as each loop iteration refers to a different rather than the same instance of *i*.
