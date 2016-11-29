# `this` isn't a game! Level 1
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: evaluateThis

category: must-know

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this){website}

---
## Content

Do you know how `this` works in Javascript? What is `this` in each context? Assume the code is run in a browser (not in a Worker).

---
## Game Content

```
console.log(this); 
```
* `window`
* `console`
* `undefined`
---
```
function f(){
  console.log(this);
}
f();
```
* `window`
* `f`
* `undefined`
---
```
function f(){
  "use strict";
  console.log(this);
}
f();
```
* `undefined`
* `window`
* `f`
---
```
var user = {
    firstName:"Anne",
    lastName:"Boleyn",
    showName:function(){
     console.log(this.firstName + 
             " " + this.lastName);
     }
    }
user.showName();
```
* `user`
* `window`
* `undefined`
---
```
var obj = {add: function(){
            return this.x + this.y;
           }};
var sum = Object.create(obj);
sum.x = 3;
sum.y = 7;
console.log(sum.add());
```
* `sum`
* `obj`
* `window`
---
```
function user(){
  this.type = "user";
  console.log(this);
}

var user1 = new user();
```
* `user`
* `user1`
* `window`