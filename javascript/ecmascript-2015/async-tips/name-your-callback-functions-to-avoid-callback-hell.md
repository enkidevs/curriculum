---
author: Bruno

levels:
  - beginner

type: normal

category: best practice

standards:
  javascript.async.0: 10
  javascript.functions.3: 10
  javascript.control-flow.5: 10

aspects:
  - workout
  - deep
  - obscura


links:
  - '[callbackhell.com](http://callbackhell.com/){blog}'

---
# Name your callback functions to avoid **callback hell**

---
## Content

Instead of:

```javascript
setTimeout(function(){
  console.log('greeting 1');
  setTimeout(function(){
    console.log('greeting 2');
  },1000);
},1000);
```

Prefer:

```javascript
function greeting1() {
  console.log('greeting 1');
  setTimeout(greeting2, 1000);
}
function greeting2() {
  console.log('greeting 2');
}
setTimeout(greeting1, 1000);
```

This makes code easier to read and, when exceptions happen, stack traces that reference function names will be much easier to work with.

This  also allows you to keep your code shallow which makes it more intuitive for editing and refactoring later.

---
## Practice

Which of the following statements about naming your callback functions do you consider false?

???

* they can minimise the memory used by your application
* they make your code more readable
* they can help you avoid callback hell
* they can make your code more intuitive

---
## Revision

Which of the following pieces of code is the better piece of code, in terms of readabilty?

???

```javascript
// Option 1
setTimeout(function() {
   console.log('Hey!');
   setTimeout(function() {
      console.log('Hey, again!');
   }, 1500);
}, 1500);

// Option 2
function Hey() {
  console.log('Hey!');
  setTimeout(Hey_again, 1000);
}
function Hey_again() {
  console.log('Hey, again!');
}
setTimeout(Hey, 1000);
```

* Option 2
* Option 1
 
