# Handle `JSON.parse` error in Node.js
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: caveats

links:

  - >-
    [www.joyent.com](https://www.joyent.com/developers/node/design/errors){website}

  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/14392110/catch-exception-in-node-during-json-parse?lq=1){website}

---
## Content

Handling a `JSON.parse` error is one of the few situations when you'd use a `try/catch` in Node.

This is because **synchronous operational errors** are very rare in Node and only occur due to bad user input. `JSON.parse` is a synchronous function and you have to deliver the error synchronously.

For example:
```
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

What is required when you're handling a `JSON.parse` error in Node? ???

* `a try/catch`
* `an if statement`
* `a loop`
* `an error message`

---
## Revision

What type of function is `JSON.parse` ?

???

*synchronous
*asynchronous
