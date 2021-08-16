---
author: rosielowther
type: normal
category: must-know
tags:
  - workout
  - deep
  - obscura
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
links:
  - >-
    [Problems With Callbacks](https://blog.enki.com/developing-async-sense-in-javascript-1cc8e4720191?gi=228832b1aeb7){article}
links:


---

# Inversion of Control


---

## Content

**Inversion of control** is one of the problems of using **callbacks** for asynchronous programming in JavaScript.

Callbacks force you to **trust another party** ("Don't call me, I'll call you!"), which is inherently unsafe as the **control** is given to the third-party caller and all we can do is trust that they'll behave as expected.

```javascript
// ...this code is in your control

thirdPartyAsyncFn(function cb(){
// ^^^^^^^^^^^^^^ while thirdPartyAsyncFn
// is executing, you don't have control

  // this code is again in your control
});
```

This requires trust that the third party won't:
- call your callback too early/late
- call your callback too many/few times
- omit any callback states/parameters
- forget to alert a callback failure

New async options such as **Promises** un-invert the control and return it back to you.

---

## Practice

What can **Promises** do compared to callbacks?

???

- maintain control over execution flow
- cancel execution
- call your callback earlier
- call your callback more frequently

---

## Revision

Consider the following scenario:

You are relying on a third-party asynchronous function named `computeData` which you are calling at some point in your application. After this function finishes computing, you want to log the result and the time it took to compute. 

To achieve this, `computeData` lets us pass a second argument which should be a callback function.

```javascript
function logData(result, time) {
  console.log(`result: ${result}`)
  console.log(`time: ${time}`)
}

computeData(myData, logData)
```

Since we're passing a callback into a third-party function, this code is potentially unsafe. 

For instance, `computeData` function may have a bug that leads to it never calling your `logData` callback or calling it with the wrong or missing arguments.

What is the name of this pattern which leads to trust issues in async programming?

???

- inversion of control
- inversion of flow
- un-inversion of control
- callback hell
- callback trust
 
