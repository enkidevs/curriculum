# Promises - Reject
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

inAlgoPool: false

category: must-know

links:

---
## Content

When using promises we can indicate something has failed by using the **reject** function instead of **resolve**.

Let's try this with our previous example:

```
var p = 
new Promise(
 function(resolve, reject){ 
 setTimeout(function(){reject("enki")}, 
 2000);
})
.then(function(result){
 console.log("success");
}); 
//Exception - Uncaught (in promise) enki
```

Uh oh - note how the **then** method was not called and how we now have an uncaught exception.

But don't worry as we can use the **catch** handler to define logic to be called when errors occur:

```
var p = new Promise(
   function(resolve, reject) {  
   setTimeout(function(){reject("enki")}, 
   2000);
})
.then(function(result){
 console.log("then called");
})
.catch(function(result){
 console.log("error " + result)});
//logs error enki
```

The **then** method we used actually takes two arguments like promise - a function to be called if the promise is fulfilled and another if it's rejected.
 
Both are optional so you can pass in a null value if you just want to specify something to be called on rejection:

```
.then(null, 
function(result){
 console.log(result);
}); //enki
```

---