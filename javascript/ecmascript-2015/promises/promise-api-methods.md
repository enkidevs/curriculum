---
author: alexjmackey
type: normal
category: must-know
links:
  - >-
    [MDN -
    Promises](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Promise API Methods


---

## Content

The promise API supplies a number of methods for working with multiple promises.

### Promise.all

Accepts an array of promises and waits until all have completed. This is very useful to ensure all necessary work has been completed before continuing.

If any of the supplied promises are rejected then the reject method is called immediately:

```javascript
Promise.all([p1, p2, p3]).then(values => {
  console.log(values);
  //[3, 1337, "foo"]
});
```

### Promise.race

Takes an array of promises and resolves when any supplied promises resolve successfully – you could use this for example to call different vendors services and just make use of the first result returned:

```javascript
Promise.race([p1, p2, p3]).then(values => {
  console.log("completed");
});
```

### Promise.reject and Promise.resolve

Creates immediately rejected or resolved promises which could be useful for testing scenarios for example:

```javascript
let p1 = Promise.reject(new Error("fail"));
let p2 = Promise.resolve();
```


---

## Practice

Given the following code snippet, what do you think will be the output of each method call?

```javascript
const p1 = new Promise(resolve =>
  setTimeout(() => resolve("a"), 5000)
);
const p2 = new Promise(resolve =>
  setTimeout(() => resolve("b"), 500)
);
const p3 = new Promise(resolve =>
  setTimeout(() => resolve("c"), 4000)
);

Promise.all([p1, p2, p3]).then(res =>
  console.log(res)
);
// ???

Promise.race([p1, p2, p3]).then(res =>
  console.log(res)
);
// ???
```

- `['a', 'b', 'c']`
- `'b'`
- `'a'`
- `'c'`
- `['b', 'c', 'a']`
- `['a', 'c', 'b']`
- `['b', 'a', 'c']`
- `['c', 'b', 'a']`
- `['c', 'a', 'b']`


---

## Revision

Which static `Promise` method will resolve after all promises in the array supplied as input resolve?

???

Which static `Promise` method will resolve when the first promise in the array supplied as input resolves?

???

- Promise.all
- Promise.race
- Promise.wait
- Promise.reject
- Promise.array
- Promise.vector
- Promise.first
- Promise.reject
 
