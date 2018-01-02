# Arrow Functions (Part 2)
author: lizTheDeveloper

levels:

  - beginner

  - basic

type: normal

tags:

  - introduction

  - es6

  - workout

  - functions

inAlgoPool: false

category: feature

---
## Content


Arrow Functions(`() => {}`) differ from anonymous keyword functions (`function(){}`) by not changing the value of `this`.

```
window.counter = 0

function Counter () {
  this.counter = 0;
  this.countUp = setInterval(function() {
    this.counter++;
  }, 1000)
  this.countDown = setInterval(() => {
    this.counter--;
  }, 1000)
}

let count = new Counter();

```

In the `countUp` counter, `window.counter` is modified, because keyword functions use the same .
In the `countDown` counter, `Counter.counter` because the `this` value is preserved.

---
## Practice

Create a counter that can successfully count up and down:

```

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

```

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
