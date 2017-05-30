# Generators and Promises
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

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise){website}

---
## Content

Some of the most exiting features of `ES6` are **generators** and **promises**.

Can you fill in the gaps in the following code snippets such that they make sense?

---
## Game Content

```
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
---

```
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

```
---
```

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
---

```
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
---

```
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
