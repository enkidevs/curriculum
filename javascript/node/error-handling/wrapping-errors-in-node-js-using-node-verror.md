---
author: rosielowther
type: normal
category: feature
links:
  - '[node-verror](https://github.com/davepacheco/node-verror){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Wrapping Errors in Node.Js Using `node-verror`


---

## Content

The module `node-verror` can be used to produce useful error messages in Node.js. It has two classes `VError` and `WError`.

### `VError` Class

`VError` is used to **combine errors**. It is possible to nest errors so that each layer in the stack annotates the error:

```javascript
let VError = require("verror");
let err1 = new Error("file not found.");
let err2 = new VError(
  err1,
  'failed to open "%s"',
  "eg.txt"
);
let err3 = new VError(
  err2,
  "request failed"
);
console.error(err3.message);
```

This gives the message:

```bash
request failed: failed to open "eg.txt":
file not found
```

### `WError` Class

To avoid giving detail about the error at every layer in stack, use `WError` to **wrap errors**.  For example the code above could be changed to:

```javascript
//... same as above
let err3 = new WError(
  err2,
  "request failed"
);
console.error(err3.message);
// 'request failed'
```

To see the whole message (as well as the class associated with each error) use `console.error(err3.toString());`.


---

## Practice

??? is used to combine errors. ??? is used to wrap errors.

- `VError`
- `WError`
- `Error`


---

## Revision

What two classes does the `node-verror` provide?

???

- `VError and WError`
- `VError and Error`
- `WError and Error`
- `VError and WrapError`
