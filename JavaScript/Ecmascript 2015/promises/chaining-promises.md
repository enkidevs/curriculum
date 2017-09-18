# Chaining Promises
author: alexjmackey

levels:

  - medium

  - advanced

tags:

  - promises

  - es6

  - new

type: normal

inAlgoPool: false

category: feature

links:

---
## Content

Promises help make sequential asynchronous operations more approachable by allowing us to write the code as if they were synchronous actions. To perform multiple synchronous actions, you can chain promises together using the **then** method:

```
var p =
new Promise(function(resolve, reject){
  setTimeout(function(){resolve("enki")},
  2000);
})
.then(function(result){

 console.log(result, " then 1");
 return result + " is";
})
.then(function(result){
 console.log(result, " then 2");
 return result + " cool"
})
.then(function(result){
 console.log(result);
});

//enki then 1
//enki is then 2
//enki is cool
```
