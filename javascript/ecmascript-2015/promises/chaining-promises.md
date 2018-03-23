---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN - Promises](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise){website}'


---

# Chaining Promises

---
## Content

Promises advantages really become apparent when you start working with more complex flows and multiple promises. 

We can chain promises together using the **then** function:

```
var p =
new Promise(function(resolve, reject){
  setTimeout(function(){resolve("enki")},
  2000);
})
.then(function(result){
 console.log("then 1");
})
.then(function(result){
 console.log("then 2");
})
.then(function(result){
 console.log("finished");
});

//then 1
//then 2
//finished
```

