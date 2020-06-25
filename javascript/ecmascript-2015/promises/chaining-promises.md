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
# Chaining Promises

---
## Content

Promises advantages really become apparent when you start working with more complex flows and multiple promises.

We can chain promises together using the `then` function:

```javascript
var p = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("enki");
  }, 2000);
})
  .then(result => {
    console.log("then 1");
  })
  .then(result => {
    console.log("then 2");
  })
  .then(result => {
    console.log("finished");
  });

//then 1
//then 2
//finished
```

---
## Practice

Fill in the following promise definition such that the logs stand true:

```javascript
const p = new ???(
  (resolve, reject) => {
    ???('enki')
  })
  .???(res => console.log(res))
  .then(res => console.log('says'))
  .???(err => console.log('hey'))
  .??? => console.log('hello'))
// enki
// says
// hello
```

* Promise
* resolve
* then
* catch
* then (res
* then()
* catch()
* next
* next(
* finally
* res
* reject

---
## Revision

Will the two `console.log` statements output the same number, or different numbers?

```javascript
const p = new Promise(resolve => {
  resolve(Math.random());
});

// do these 2 log different or same value?
p.then(console.log);
p.then(console.log);
```

???

* Same
* Different
 
