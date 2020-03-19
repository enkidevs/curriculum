---
author: lizTheDeveloper

levels:

  - beginner

  - basic

type: normal

category: feature

aspects:
  - introduction
  - workout
  - new

inAlgoPool: false

tags:

  - introduction

  - es6

  - workout

  - functions


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions){website}'

---

# Arrow Functions (Part 2)

---
## Content

One way that arrow functions (`() => {}`) differ from regular functions (`function(){}`) is that they do not treat `this` specially. 

Any usage of `this` inside an arrow function is just like any other variable, and is looked up lexically through parent scopes until a `this` is found.

On the other hand, `this` in any regular function is a special construct that ignores where a functions is defined (and thus ignores the scope), and its value solely depends on how a function was called.

Let's take a look at how this `Counter()` constructor is being defined: 

```js
window.counter = 0;

function Counter() {
  this.counter = 0;

  function countUp() {
    this.counter++;
  }

  const countDown = () => {
    this.counter--;
  }

  setInterval(countUp, 1000);
  setInterval(countDown, 1000)
}

let count = new Counter();
```

Now, if we were to log the `count` instance, we would get:

```js
// after 1 second
console.log(count);
// Object { counter: -1}

// after 10 seconds
console.log(count);
// Object { counter: -10 }
```

At first glance, you would expect the `counter` property to be 0, because each second you both add 1 and subtract 1 from its value. However, this isn't the case.

`setInterval(fn, ms)` will invoke the given function like a regular function, i.e. `fn()`.

This means that in the `countUp()` function, `this` will be the global object which is different from the `this` pointing to the instance of `Counter`.

On the other hand, arrow functions always treat `this` like a variable from the upper scope, no matter how we call them. This leads to the `countDown()` function modifying the `counter` property on the instance of `Counter`.

---
## Practice

Create a counter that can successfully count up and down:

```js
function Counter () {
  this.counter = 0;
  this.countUp = setInterval(???, 1000)
  this.countDown = setInterval(???, 1000)
}

let count = new Counter();
```



* `() => {this.counter++;}`
* `() => {this.counter--;}`
* `function() {this.counter++;}`
* `function() {this.counter--;}`

---
## Revision

Create a counter that can successfully count up and down:

```js
function Counter () {
  this.counter = 0;
  this.countUp = setInterval(???, 1000)
  this.countDown = setInterval(???, 1000)
}

let count = new Counter();
```



* `() => {this.counter++;}`
* `() => {this.counter--;}`
* `function() {this.counter++;}`
* `function() {this.counter--;}`

 
