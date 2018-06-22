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
# How To Create Promises

---
## Content

Promises are easy to create.

When we create a new Promise we supply a function that has two arguments.

These two arguments are mapped to special promise `resolve` and `reject` functions.

The below code creates a new promise.

```javascript
var p =
new Promise(function(resolve, reject){
 console.log("I run immediately");
}).
```

Note how the functions body was run immediately.

### then

`then` is used with a promise object and allows you to define how you want to handle the result of a promise.

Let's pretend we want to call an external service to get a value and on successful completion log the returned value to the console.

Instead of actually calling an external service we will use the **setTimeout** method to delay the return 2 seconds simulating making a remote call.

```javascript
var p =
new Promise(function(resolve, reject) {
 console.log("run immediately");
 setTimeout(function(){
   resolve("enki")}, 2000);
})
.then(function(result){
 console.log(result)
});
// logs run immediately
// waits 2 seconds
// logs "enki"
```

We declared a new promise supplying a function with two arguments resolve and reject.

Next we used setTimeout to asynchronously call the resolve function after two seconds passing the value enki.

When resolve was called after two seconds we then logged this value to the console.

It is important to note that you cannot cancel a promise once it's being processed and you cant check on its current state either.

Next let's look at how to indicate something went wrong..

---
## Practice

Complete the missing words in the code such that the commented scenario stands true:

```javascript
const p = new ???(
  (???) => {
    console.log('Hello')
    setTimeout(() => {
      ???('..from Enki!', 4000)
    })
  })
  .???(res => {
    console.log(res)
  })

// log 'Hello'
// wait 4 seconds
// log '..from Enki!'
```

* Promise
* (resolve, reject)
* resolve
* then
* catch
* reject
* (reject)
* await
* async
* wait
* try

---
## Revision

Promises take as input a function with two arguments. How are they called?

```javascript
const p = new Promise(
  function (???, ???) {
    ...
  }
)
```

* resolve
* reject
* return
* error
* throw
* catch
* then
 
