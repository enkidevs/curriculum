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
notes: >-
  I'm wondering if the second block of code is too long. Maybe I should scrap
  the usage? Nah, you need a bit of code to explain promises, that's just how it
  is :D -lizthedeveloper


  Also, what if people that are new to promises end up here? Should I set `for`
  to experts?
links:
  - >-
    [MDN -
    Promise](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Creating Promises


---

## Content

The ES6 way to create promises is with the `new Promise()` constructor and two callbacks, `resolve` and `reject`, used to alter the promise state.

```js
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

```js
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

- `resolve`
- `reject`
- `response`
- `request`
- `url`
- `pass`
- `fail`
 
