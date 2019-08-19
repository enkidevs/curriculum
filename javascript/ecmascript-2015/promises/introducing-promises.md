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
# Introducing Promises

---
## Content

A **promise** is an object that represents a value that may or may not be obtained in the future and can be passed around like any other value.

### Why use promises?

It is common in JavaScript to perform tasks that do not complete immediately – for example making an ajax call. Pages would run very slowly if we had to block everything to wait for an ajax call to finish.

However we still need a way to know when our ajax call has completed. One way of approaching this problem is to use callback functions. A callback function is called when the original task has completed.

The most common approach in JavaScript to perform an async operation is to use a callback with an async mechanism like `fetch` or `setTimeout`. Callbacks work great for simple scenarios such as doing one or two async tasks at a time. As soon as we need to involve more async tasks or increase their complexity with logic and/or error handling, callbacks-based code starts getting difficult to manage.

With Promises we do not get this issue because promises are inherently reliable (they handle errors for us automatically) and they allow us to write simpler syntax for handling async logic.

At the same time, with Promises we can write code that behaves like we already have the value, no matter when that value actually arrives. This allows Promises to eliminate time as a concern in our code.

### Promises eliminate time as a concern

Creating a Promise returns immediately:
```js
var promise = new Promise(function(
  resolve,
  reject
) {
  // we call resolve() on success
  // we call reject() on fail
});
```

And we can use that promise anytime and anywhere later to resolve it to a value. When creating a promise we are given a structure holding our eventual result and the promise doesn't care how, or even if we use it. 

Getting a value from a promise is fully decoupled from what we do with that value:

```js
promise.then(function(value) {
  // here we have the value
}, function(error) { 
  // here we have the error
});
```

### Callbacks do not

When we perform an async operation that involves a callback, we have to immediately provide that callback. We cannot decide to handle this operation differently in another place or read the async value multiple times etc.
```js
getThing(() => {

});
```

---
## Practice

Which of the following statements about promises do you consider false?

???

* Promises will block the execution thread of your application
* Promises tend to be more useful in complex scenarios where callback get out of control
* Promises were available before standard JavaScript implementation via third-party libraries
* Promises are used for asynchronous operations

---
## Revision

What problem do Promises try to solve?

???

* callbacks getting out of control in complex scenarios
* asynchronous calls stopping thread execution
* lack of any kind of support for asynchronous operation
* too many libraries doing the same thing
 
