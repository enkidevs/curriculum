# Handling event errors
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

---
## Content

All events are treated equally as all event types are defined by an arbitrary string, when an event emitter emits an event with no attached listeners the event is ignored.

If the event is called *error* however, the error is thrown into the event loop, then generating an uncaught exception. To stop this from breaking the application, uncaught exceptions can be caught by listening to the `uncaughtException` which the global event emitter object emits:

```
test.on(‘uncaughtException’, function(err) {

  console.error(‘uncaught exception: ‘, err.stack || err);


  closeApp(function(err) {
    if (err)
      // error closing down


    test.exit(1);
  });

});
```

---
## Practice

Which of the following is emitted by the global event emitter object?
???

* `uncaughtException`
* `eventFailure`
* `error`

---
## Revision

What happens when the event emitter emits an event with no attached listeners?
???

* Event is ignored.
* Event is thrown into the event loop.
* Event causes an error.
