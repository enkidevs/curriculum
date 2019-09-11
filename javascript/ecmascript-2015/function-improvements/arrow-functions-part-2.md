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

Arrow Functions(`() => {}`) differ from anonymous keyword functions (`function(){}`) by not changing the value of `this`. Before **ES6**, every time you would call a function it would define its own `this` value, depending on how the function was called.

Let's take a look at how this `Counter()` constructor is being defined: 

```js
window.counter = 0;

function Counter() {
  // The Counter() constructor defines `this`
  // as an instance of itself.
  this.counter = 0;

  this.countUp = setInterval(function() {
    // The countUp() function defines `this`
    // as the global object (because it's where
    // countUp() is executed), which is different
    // from the `this` defined by the
    // Person() constructor
    this.counter++;
  }, 1000);

  this.countDown = setInterval(() => {
    // In the countDown() function,
    // `this` properly refers to the
    // Person() object 
    this.counter--;
  }, 1000);
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

You would normally expect the `counter` property to be 0, because each second you add 1 and you subtract 1 from it's value. This is not the case because in the `countUp()` function, `this` is defined as a global object which is different from the `this` that is defined by the `Person()` constructor. This leads to only the `countDown()` function modifying the `counter` property.

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

 
