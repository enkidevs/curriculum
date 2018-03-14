---
author: Dral

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - promise

  - async

  - functional programming

  - es6

links:

  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise)'

---

# Creating promises

---
## Content

The ES6 way to create promises is with the `new Promise()` constructor and two callbacks, `resolve` and `reject`, used to alter the promise state.

```
function timeout(delay) {
  return new Promise( (resolve, reject) => {
    setTimeout(() => resolve(), delay);
  });
}

// Usage
timeout(1000).then(() => {
  console.log('One second later');
})
```

To reject the promise, call `reject` instead of `resolve`:

```
function myRequestionFn(url) {
  return new Promise( (resolve, reject) => {
    someRequestLib(url, (err, data) => {
      if (err) {
        reject(err);
      } else if (data.status !== 200) {
        reject(new Error('Non-200 status');
      } else {
        resolve(data);
      }
    });
  });
}

// Usage
myRequestionFn('/my-api').then(data => {
  console.log('Succesful request!');
}).catch(err => {
  console.error('Error ocurred:', err);
});
```

---
## Revision

What are the `Promise()` callbacks?

???

???

* `resolve`
* `reject`
* `response`
* `request`
* `url`
* `pass`
* `fail`

