---
author: alexjmackey

levels:

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN - Promises](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/Promise){website}'


---

# Promise API Methods

---
## Content

The promise API supplies a number of methods for working with multiple promises.

**promise.all**

Accepts an array of promises and waits until all have completed. This is very useful to ensure all necessary work has been completed before continuing.

If any of the supplied promises are rejected then the reject method is called immediately:

```
Promise.all([p1, p2, p3])
.then(values => {
 console.log(values);
//[3, 1337, "foo"]
});
```

**promise.race**

Takes an array of promises and resolves when any supplied promises resolve successfully – you could use this for example to call different vendors services and just make use of the first result returned:

```
Promise.race([p1, p2, p3])
.then(values => {
 console.log(“completed”);
});
```

**promise.reject and promise.resolve**

Creates immediately rejected or resolved promises which could be useful for testing scenarios for example:

```
var p1 = Promise.reject(
 new Error("fail")
);
var p2 = Promise.resolve();
```

