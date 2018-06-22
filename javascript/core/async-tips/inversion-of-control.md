---
author: rosielowther

levels:
  - basic
  - beginner

type: normal
category: must-know

standards:
  javascript.async.2: 10

tags:
  - workout
  - deep
  - obscura

aspects:
  - workout
  - deep
  - obscura

links:
  - '[blog.getify.com](http://blog.getify.com/promises-part-2/){website}'

---
# Inversion of Control

---
## Content

**Inversion of control** is one of the problems of using **callbacks** for asynchronous programming in JavaScript.

Callbacks force you to **trust another party** ("Don't call me, I'll call you!"). In some cases this will mean relying on a function that was written by a third-party.

Control of the code executing now is separate to the part of the program that executes later, controlled by the other party:

```javascript
// now (your control)
asyncFunc(function(){
    // later (inverted control)
});
```

This requires trust that the third party doesn't:

* call your callback too early/late
* call your callback too many/few times
* omit any callback states/parameters
* forget to alert a callback failure

New async options such as **Promises** un-invert the control.

---
## Practice

What can **Promises** do compared to callbacks?

???

* un-invert the control
* enforce control
* call your callback earlier
* call your callback more frequently

---
## Revision

Consider the following scenario:

You are relying on a third-party asynchronous function named `computeData` which you are calling at some point in your application. After this function finishes computing, you want to log the computed data and the time it took to compute. To achieve this, you can pass to `computeData` a second argument which should be a callback function.

```javascript
function logData(data, time) {
  console.log('computed data:')
  console.log(data)
  console.log('time taken:')
  console.log(time)
}

computeData(myData, logData)
```

What could happen is that the `computeData` function may forget to your call your `logData` function provided. One other potential problem is that `computeData` may call `logData` without passing the `time` argument. These are some examples of some consequences of a more general problem in async callback programming.

What is the name of this dynamic?

???

* inversion of control
* inversion of flow
* un-inversion of control
* callback hell
* callback trust
 
 
 
 
