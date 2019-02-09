---
author: Dral

levels:

  - advanced

type: normal

category: how to

standards:

  javascript.async.2: 10

tags:

  - promises

  - functional programming

  - async

  - introduction

  - workout

  - deep

aspects:
  - workout
  - deep
  - obscura


---

# Transform values into promises

---
## Content

To keep your API consistent, or prototype for testing, it's often useful to return a `Promise` that resolves to a value directly.

```javascript
return new Promise(resolve => {
  resolve('my value')
})
```

`Promises` in `ES6` have a shortcut for this common pattern:

```javascript
return Promise.resolve('my value')
```

Or to create a `Promise` representing an error:

```javascript
return Promise.reject(
  new Error('Boo! :o')
)
```

---
## Practice

Create the following promise to represent an error:

```javascript
return Promise.???(
  new ???('Boo! :o')
)
```

* `reject`
* `Error`
* `error`
* `create`
* `exception`

---
## Revision

Complete the shortcut notation for **Promises** in **ES6**:

```javascript
return ???.???('my value');
```


* `Promise`
* `resolve`
* `reject`
* `new`
* `send`
* `return`
* `prom`

---
## Quiz 
### In what order will these console.log() statements occur?

In what order will these `console.log()` statements occur?

```javascript
const element = document.body;

element.addEventListener('click', () => {
  Promise.resolve().then(() => console.log('Microtask 1'));
  console.log('Listener 1')
})

element.addEventListener('click', () => {
  Promise.resolve().then(() => console.log('Microtask 2'));
  console.log('Listener 2')
})
```


 ???

* Listener 1; Microtask 1; Listener 2; Microtask 2;
* Listener 1; Listener 2; Microtask 1; Microtask 2;
* Microtask 1; Listener 1; Microtask 2; Listener 2;
* Microtask 2; Listener 2; Microtask 1; Listener 1;
 
 
 
 
 
