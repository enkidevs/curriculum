# Name your callback functions to avoid 'callback hell'
author: Bruno

levels:

  - beginner

type: normal

category: best practice

standards:
  js.async.0: 10
  js.functions.3: 10
  js.control-flow.5: 10

links:

  - '[callbackhell.com](http://callbackhell.com/){blog}'

---
## Content

Instead of:
```
setTimeout(function(){
  console.log('greeting 1');
  setTimeout(function(){
    console.log('greeting 2');
  },1000);
},1000);
```
Prefer:
```
function greeting1() {
  console.log('greeting 1');
  setTimeout(greeting2, 1000);
}
function greeting2() {
  console.log('greeting 2');
}
setTimeout(greeting1, 1000);
```
This makes code easier to read
and, when exceptions happen, stack traces that reference function names will be much easier to work with.

This  also allows you to keep your code shallow which makes it more intuitive for editing and refactoring later.

---
## Revision

Which of the following pieces of code is the better piece of code, in terms of ease of reading and refactoring? ???

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
