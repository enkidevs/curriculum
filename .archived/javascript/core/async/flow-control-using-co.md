---
author: rosielowther

levels:

  - advanced

type: normal

category: feature

standards:

  javascript.async.3: 10

  javascript.async.2: 10

  javascript.use-modules.2: 10

  javascript.es6-functions.1: 10

tags:

  - workout

  - deep

  - async

  - promises

  - npm

  - yield

aspects:
  - workout
  - obscura
  - deep


links:

  - '[github.com](https://github.com/tj/co){website}'


---

# Flow control using _co_

---
## Content

_co_ is a **flow control program**, which uses **generators** and **promises**. Use it to write non-blocking code more cleanly. It can be used in the browser and with Node.javascript.

An example of *co*:

```
co(function *(){
  // yield any promise 
  var result = yield Promise.resolve(true);
}).catch(onerror);
 
co(function *(){
  // resolve multiple promises in parallel 
  var a = Promise.resolve(1);
  var b = Promise.resolve(2);
  var all = yield [a, b];
  console.log(all);
  // => [1, 2] 
}).catch(onerror);
```
`co()` can `yield` promises, 'thunks', arrays, objects, generators and generator functions.

`co()` can be used for parallel execution and delegation.

_co_ version 4 returns a promise, similar to ES7 async/await, but with better parallelism capabilites than its previous versions (i.e. you can yield an array of promises and *co* will handle the parallelism).

---
## Practice

Complete the following JS code snippet where co is used to yield a promise: 

```javascript
???(function *() {
   var result = ??? Promise.resolve(true);
}).catch(onerror);
```


* `co`
* `yield`
* `run`
* `do`
* `const`
* `argv`
* `env`

---
## Revision

Can **generator function** be `yield`ed by `co()`?

???


* `yes`
* `no`

 
 
 
