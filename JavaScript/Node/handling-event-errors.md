# Handling event errors
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: passing-arguments-to-listeners

links:
- '[Node Errors](https://nodejs.org/api/errors.html)'

---
## Content

All events are treated equally as all event types are defined by an arbitrary string. When an event emitter[1] emits an event with no attached listeners the event is ignored.

If the event is called *error* however, the error is thrown into the event loop, then generating an uncaught exception. To stop this from breaking the application, uncaught exceptions can be caught by listening to the `uncaughtException` which the global event emitter object emits. Take `test` as a sample event emitter:

```
test.on(‘uncaughtException’, function(err)
{
  console.error(‘uncaught exception: ‘,
                    err.stack || err);


  closeApp(function(err) {
    if (err)
      // error closing down


    test.exit(1);
  });

});
```

---
## Practice

What event type is emitted by the global event emitter object?
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

---
## Footnotes
[1:Event emitter]

Many objects in Node can **emit** events.
For example, `fs.readStream` will emit an event when a file is opened.
All event emitters are instances of the `events.EventEmitter` class.
