---
author: Stefan-Stojanovic

levels:
  - beginner

type: normal

category: tip

aspects:

  - introduction
  - new
  - workout

inAlgoPool: false

standards:
  javascript.destructuring.2: 10
links:
  - '[MDN](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment){website}'

---
# Argument Destructuring With Defaults

---
## Content

Tip: when using a destructuring-hash pattern in a function signature, try and use a fallback default `{}`:

Good:
```javascript

function x({ a, b } = {}) {

}
```

Bad:
```javascript
function x({ a, b }) {

}
```

**Note**: The second function can give a: *cannot read property a of undefined* error.


---
## Practice

Which of these code snippets will ensure this function doesn't throw an error?

A)
```javascript
function x({ a, b }) {

}
```
B)
```javascript
function x({ a, b } = {}) {

}
```

???

* B
* A
