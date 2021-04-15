---
author: rosielowther
type: normal
category: caveats
tags:
  - introduction
  - workout
links:
  - >-
    [www.joyent.com](https://www.joyent.com/developers/node/design/errors){website}
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/14392110/catch-exception-in-node-during-json-parse?lq=1){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Handle `JSON.parse` error in Node.js


---

## Content

Handling a `JSON.parse` error is one of the few situations when you'd use a `try/catch` in Node.

This is because **synchronous operational errors** are very rare in Node and only occur due to bad user input. `JSON.parse` is a synchronous function and you have to deliver the error synchronously.

For example:

```js
webSocket.on('msg', function (msg) {
  var msgObj;
  try {
    msgObj = JSON.parse(msg);
  } catch (e) {
    return console.error(e);
  }
}
```


---

## Practice

What is required when you're handling a `JSON.parse` error in Node? 

???

- a try/catch
- an if statement
- a loop
- an error message


---

## Revision

What type of function is `JSON.parse` ?

???

- synchronous
- asynchronous
