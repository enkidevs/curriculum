---
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
# `this` isn't a game! Level 1

---
## Content

Do you know how `this` works in JavaScript? What is `this` in each context? Assume the code is run in a browser (not in a Worker).

---
## Game Content

```javascript
console.log(this);
```

* `window`
* `console`
* `undefined`

%exp
In global execution context(outside any function), `this` refers to the **global object**. In **web browsers**, the **window** object is also the **global object**.
%

---

```javascript
function f(){
  console.log(this);
}
f();
```

* `window`
* `f`
* `undefined`

%exp
Since the following **code** is not in **strict mode**, and because the value of `this` is not set by the call, `this` will default to the **global object**, in this case **window**.
%

---

```javascript
function f(){
  "use strict";
  console.log(this);
}
f();
```

* `undefined`
* `window`
* `f`

%exp
In **strict mode** if `this` was not defined by the execution context, it remains **undefined**.
%

---

```javascript
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

%exp
When a **function** is called as a method of an object, its `this` is set to the object that the **method** was called on.
%

---

```javascript
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

%exp
An intersting feature of **JavaScript**'s prototype inheritance is how `this`, since the function `add` was called as method the object `sum`, refers to `sum`.
%

---

```javascript
function user(){
  this.type = "user";
  console.log(this);
}

var user1 = new user();
```

* `user`
* `user1`
* `window`

%exp
When a **function** is used as a **constructor**(with the **new** keyword), it is bound to the **new object** being constructed.
%
 