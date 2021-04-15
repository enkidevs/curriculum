---
author: rosielowther
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [nodejs.org](https://nodejs.org/api/process.html#process_event_uncaughtexception){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# uncaughtException listener in Node.js


---

## Content

Use an `uncaughtException` listener to prevent a program crashing due to an unhandled exception.

For example:

```javascript
process.on('uncaughtException',
  function(err) {
     console.log('exception: ' + err);
  }
)
```

An unhandled exception means an application is in an **undefined state**. It is not possible to continue the program safely and should restart.

Note that `uncaughtException` is a crude mechanism for exception handling and is therefore not recommended in production.


---

## Practice

How would you catch unhandled exceptions in your NodeJS code, using an event listener?

```javascript
process.???(???,
  function(err) {
    console.log('caught')
  })
```

- on
- 'uncaughtException'
- uncaughtException
- listen
- addEventListener
- process
- watch
- 'exception'
- exception


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

- on
- uncaughtException
- uncaught
- any
- undefinedState
- listen
