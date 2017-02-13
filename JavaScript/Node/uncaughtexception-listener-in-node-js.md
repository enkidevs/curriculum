# `uncaughtException` listener in Node.js
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - >-
    [nodejs.org](https://nodejs.org/api/process.html#process_event_uncaughtexception){website}

---
## Content

Use an `uncaughtException` listener to prevent a program crashing due to an unhandled exception.

For example:
```
process.on('uncaughtException',
  function(err) {
     console.log('exception: ' + err);
  }
)
```
An unhandled exception means an application is in an **undefined state**. It is not possible to continue the program safely and should restart.

Note that `uncaughtException` is a crude  mechanism for exception handling and is therefore not recommended in production.

---
## Revision

Complete the code snippet so `uncaughtException`s are handled:
```javascript
process.???('???',
  function(err) {
     console.log('exception: ' + err);
  }
)

```

*`on`
*`uncaughtException`
*`uncaught`
*`any`
*`undefinedState`
*`listen`
