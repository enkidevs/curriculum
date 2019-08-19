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

It is common in JavaScript to perform tasks that do not complete immediately – for example making an ajax call. Pages would run very slowly if we had to stop everything on a page to wait for an ajax call so JavaScript continues to execute other code.

However we still need a way to know when our ajax call has completed. One way of approaching this problem is to use callback functions. A callback function is called when the original task has completed.

Callbacks work great for simple scenarios such as doing one thing at a time. As soon as we need to do multiple asynchronous tasks it starts getting out of control (e.g. having multiple callbacks and exceptions).

Promises eliminate time as a problem, and they provide a better approach to the scenario presented above.

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
 
