---
author: alexjmackey

levels:
  - medium
  - advanced

type: normal

category: must-know

aspects:
  - introduction
  - workout

inAlgoPool: false

links:
  - '[MDN - Promises](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise){website}'

---
# Promises - Reject

---
## Content

When using promises we can indicate something has failed by using the `reject` function instead of `resolve`.

Let's try this with our previous example:

```javascript
let p = new Promise((resolve, reject) => {
  setTimeout(() => {
    reject("enki");
  }, 2000);
}).then(result => {
  console.log("success");
});
///Exception - Uncaught (in promise) enki
```

Uh oh - note how the `then` method was not called and how we now have an uncaught exception.

But don't worry as we can use the `catch` handler to define logic to be called when errors occur:

```javascript
var p = new Promise((resolve, reject) => {
  setTimeout(() => {
    reject("enki");
  }, 2000);
})
  .then(result => {
    console.log("then called");
  })
  .catch(error => {
    console.log("error " + error);
  });
//logs error enki
```

The `then` method we used actually takes two arguments like promise - a function to be called if the promise is fulfilled and another if it's rejected.

Both are optional so you can pass in a null value if you just want to specify something to be called on rejection:

```javascript
.then(null,
function(error){
 console.log(error);
}); //enki
```

---
## Practice

What is the second argument the `.then` method can take?

???

* a function that is triggered if there is an error in the promise
* a number, which represents in `ms` how long the `.then` should wait before executing
* a number, which represents in `ms` how long the `.then` should wait before returning 

---
## Revision

Fill in the following Promise definition:

```javascript

const p = new ???(
  (resolve, reject) => {
    // do async operation
  })
  .???(res => {
    // handle result if the operation was
    // successful
  })
  .???(err => {
    // handle errors
  })
```

* Promise
* then
* catch
* next
* await
* try
* resolve
* reject
 
