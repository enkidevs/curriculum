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
# How To Create Promises

---
## Content

When we create a new Promise we supply a function that has two arguments. These two arguments are mapped to special promise `resolve` and `reject` functions. The below code creates a new promise.

```javascript
let p = new Promise((resolve, reject) => {
  // we call resolve() on success
  // we call reject() on fail
});
```

### then

`then` allows you to define how you want to handle the result of a promise.

Let's pretend we want to call an external service to get a value, and on successful completion log the returned value to the console.

Note: Instead of actually calling an external service we will use the `setTimeout` method to delay the return 2 seconds simulating making a remote call.

```javascript
let p = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("enki");
  }, 2000);
}).then(result => {
  console.log(result);
});

// waits 2 seconds
// logs "enki"
```

We declared a new promise supplying a function with two arguments `resolve` and `reject`. Next we used `setTimeout` to asynchronously call the `resolve` function after two seconds passing the value `"enki"`. When `resolve` was called after two seconds we then logged this value to the console.

It is important to note that you cannot cancel a promise once it's being processed and you can't check on its current state either.

Note that the code in the function body runs immediately. It is only the call to `resolve` or `reject` that is actually async:

```javascript
let p = new Promise((resolve, reject) => {
  console.log("I run immediately!");
  resolve("I run later");
});
```

Next let's look at how to handle errors.

---
## Practice

Complete the missing words in the code such that the commented scenario stands true:

```javascript
const p = new ???(
  (resolve, reject) => {
    console.log('Hello');
    setTimeout(() => {
      ???('...from Enki!');
    }, 4000)
  });

p.???(res => {
  console.log(res)
})

// log 'Hello'
// wait 4 seconds
// log '...from Enki!'
```

* Promise
* resolve
* then
* fulfill
* reject
* wait
* try
* promise
* after

---
## Revision

Promises take as input a function with two arguments. How are they usually called?

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
 
