---
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know


links:

  - '[blog.getify.com](http://blog.getify.com/promises-part-2/){website}'


---
## Content
# Inversion of Control

**Inversion of control** is one of the problems of using **callbacks** for asynchronous programming in JavaScript.

Callbacks force you to **trust another party** ("Don't call me, I'll call you!"). In some cases this will mean relying on a function that was written by a third-party. 

Control of the code executing now is separate to the part of the program that executes later, controlled by the other party:
```
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
## Revision

What can **Promises** do?

???


* un-invert the control
* enforce control
* call your callback earlier
* call your callback more frequently

