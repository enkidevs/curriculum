---
author: rosielowther

levels:
  - basic
  - advanced
  - medium

type: normal

category: feature

standards:
  javascript.identify-common-design-patterns.5: 10
  javascript.use-modules.2: 10
  javascript.use-open-source-javascript-packages.6: 10

tags:
  - introduction
  - workout

links:
  - '[github.com](https://github.com/davepacheco/node-verror){website}'


aspects:
  - introduction
  - workout


---
# Wrapping errors in Node.js using _node-verror_

---
## Content

The module `node-verror` can be used to produce useful error messages in Node.js. It has two classes `VError` and `WError`.

**VError class**

`VError` is used to **combine errors**. It is possible to nest errors so that each layer in the stack annotates the error:
```javascript
var VError = require('verror');
var err1 = new Error('file not found.');
var err2 = new VError
   (err1, 'failed to open "%s"', 'eg.txt');
var err3 = new
   VError(err2, 'request failed');
console.error(err3.message);
```
This gives the message:
```bash
request failed: failed to open "eg.txt":
file not found
```
**WError class**

To avoid giving detail about the error at every layer in stack, use `WError` to **wrap errors**.  For example the code above could be changed to:
```javascript
//... same as above
var err3 = new
    WError(err2, 'request failed');
console.error(err3.message);
// 'request failed'
```
To see the whole message (as well as the class associated with each error) use `console.error(err3.toString());`.

---
## Practice

??? is used to combine errors. ??? is used to wrap errors.


* VError
* WError
* Error

---
## Revision

What two classes does the `node-verror` provide?

???


* VError & WError
* VError & Error
* WError & Error
* VError & WrapError

 
