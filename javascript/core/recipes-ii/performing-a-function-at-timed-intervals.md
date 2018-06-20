---
author: pawel

levels:

  - basic

  - beginner

type: normal

category: how to

standards:

  javascript.async.0: 10

tags:

  - workout

  - introduction

  - deep

  - timed-intervals

  - fundamental




aspects:
  - workout
  - introduction
  - deep


---

# Performing a function at timed intervals

---
## Content

To perform functions at regular intervals using `setInterval`:

```javascript
function myFunction() {
 //doSomething();
}
var loop = 
window.setInterval(myFunction, 1000);

```
The first argument of `setInterval` is a function we want to run periodically, the second argument is the time in milliseconds.

To clear the interval:

```javascript
clearInterval(loop);
```

---
## Practice

Make `hi` run every 2 seconds:
```javascript
function hi(){
  alert("Hi!");
}
var loop = ???
   .???(hi,???);
```

* window
* setInterval
* 2000
* 200
* function

---
## Revision

Make `hi` run every 2 seconds:
```javascript
function hi(){
  alert("Hi!");
}
var loop = ???
   .???(hi,???);
```

* window
* setInterval
* 2000
* 200
* function

 
