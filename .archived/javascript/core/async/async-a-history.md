---
author: rosielowther

levels:

  - advanced

type: normal

category: must-know

standards:

  javascript.async.3: 10

tags:
  - introduction
  - workout
  - obscura

aspects:
  - introduction
  - obscura


links:

  - '[blog.risingstack.com](https://blog.risingstack.com/asynchronous-javascript/){website}'
  - '[github.com](https://github.com/getify/You-Dont-Know-JS/tree/master/async%20%26%20performance){website}'


---

# Async: a history

---
## Content

There are several ways of programming **asynchronously** in JavaScript. Each method was introduced as an improvement over the existing method. 

**ES5 callbacks** 

Use a callback function to encapsulate the continuation of the program. Some problems are "callback hell", error handling and no use of `return` or `throw`.

**ES6 promises** 

Use promises as a placeholder for a future value, like an order number at a fast-food restaurant. This allows decisions to be made before the value is known.

**ES6 generators** 

Pause and continue a generator function from a `yield` point. This is designed for synchronous programming but can be hacked into working asynchronously.

**ECMAScript2017 async** 

In ECMAScript2017 it will be possible to use the `async` keyword to create an async function. The `await` keyword works similarly to `yield`.

---
## Practice

In ECMAScript2017, it'll be possible to use the ??? keyword to create an async function. The ??? keyword works similarly to yield.


* async
* await
* return
* throw
* adjust
* apply
* generator

---
## Revision

What keyword is specific to **ES7 Async**?

???


* await
* yield
* return
* throw
