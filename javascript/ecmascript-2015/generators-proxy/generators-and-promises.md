---
author: gregbenner

levels:

  - basic

  - advanced

  - medium

type: fillTheGap

category: must-know

tags:

  - promise

  - async

  - functional programming

links:

  - '[MDN - Promises](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise){website}'

  - '[MDN - Generators](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Generator){website}'

---

# Generators and Promises

---
## Content

Some of the most exiting features of ES6 are generators and promises.

Can you fill in the gaps in the following code snippets such that they make sense?

---
## Game Content

```javascript
function* genFunc() {
  yield 'E';
  yield 'n';
  yield 'k';
  yield 'i';
}
let genObj = genFunc();
console.log(genObj.next());
// { value: ??? : false }

```

* 'E' , done
* 'E' , next
* 'n' , done

%exp
Generators are functions with multiple `yield` expressions, which act like "pause" buttons. When the `next()` function is called, the generator goes to the next unvisited yield. The object returned by the generator has the `value` field, which contains the yielded object, and a `done` field, which states whether there are any yields left.
%

---

```javascript
function* observer() {
  console.log(`1. ${yield}`);
  return 'result'
}
let genObj = observer();
genObj.next();
genObj.next('E');

// what does the console.log ???

```

* 1. E
* 1. n
* 1. k

%exp
The first `next()` pauses the generator in the middle of a `console.log()`. The second one sends `E` to the waiting expression, which ends up logging `1. E`.
%

---

```javascript
function timeout(delay) {
  return new Promise((resolve, reject) => {
    setTimeout(resolve, delay, Date.now());
  });
}

// Usage
timeout(1000).???((lastTime) => {
  let timeNow = Date.now() - lastTime;
  console.log(`It's been: ", ${timeNow} ms`);
});
```

* then
* next
* success

%exp
When working with promises, the `then()` function is used to manipulate values returned by async operations, chaining promises together.

When the first promise in the chain gets resolved (in this case, `timeout`'s promise gets resolved after 1000ms), `then()` is invoked, logging `It's been: 1000ms`(or a value very close to it) to the console.
%

---

```javascript
let newPet = new Promise((resolve, reject) => {
    reject(new Error('sad kittens'));
});

newPet.???((err)=> {
  console.log(err);
});

```

* catch
* error
* fail

%exp
Unlike `then()`, `catch()` is used to handle rejected promises. In this case, the error message is logged.
%

---

```javascript
let pet1 = Promise.resolve("Dog");
let pet2 = "Grumpy Cat";
let pet3 = new Promise((resolve, reject) => {
  setTimeout(resolve, 100, "Fish");
});

Promise.???(
[pet1, pet2, pet3])
  .then(function(values) {
    console.log(values);
});

```

* all
* multi
* then

%exp
The `all()` function returns a single promise that resolves when all promises passed as an array in the arguments have resolved, or rejects with the first rejected promise's error.
%
