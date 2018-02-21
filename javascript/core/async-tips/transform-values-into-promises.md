# Transform values into promises
author: Dral

levels:

  - advanced

type: normal

category: how to

standards:
  js.async.2: 10

tags:
  - promises
  - functional programming
  - async
  - introduction
  - workout
  - deep

---
## Content

To keep your API consistent, or prototype for testing, it's often useful to return a `Promise` that resolves to a value directly.

```
return new Promise(resolve => {
  resolve('my value')
})
```

`Promises` in `ES6` have a shortcut for this common pattern:

```
return Promise.resolve('my value')
```

Or to create a `Promise` representing an error:

```
return Promise.reject(
  new Error('Boo! :o')
)
```

---
## Practice

Create the following promise to represent an error:

```
return Promise.???(
  new ???('Boo! :o')
)
```
*`reject`
*`Error`
*`error`
*`create`
*`exception`

---
## Revision

Complete the shortcut notation for **Promises** in **ES6**:
```javascript
return ???.???('my value');
```

*`Promise`
*`resolve`
*`reject`
*`new`
*`send`
*`return`
*`prom`
