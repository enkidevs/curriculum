# Passing arguments to listeners
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: synchronous-event-delivery

standards:
  js.events-asynchronous-operations: 20

tags:
  - introduction
  - workout

links:
- '[Passing arguments](https://nodejs.org/api/events.html#events_passing_arguments_and_this_to_listeners)'

---
## Content

The `eventEmitter.emit()` method allows for a set of arguments to be passed to the listener functions. The `this` keyword, when passed, is set to reference the `EventEmitter` to which the listener is attached.

```
var EventEmitter = require('events');
class MyEmitter extends EventEmitter {}
const emitter = new MyEmitter();

emitter.on('event', function(x, y) {

  console.log(x, y, this);

});

// emit event
emitter.emit('event', 'En', 'ki');

```
Gives the following output:
```
En ki MyEmitter {
  domain: null,
  _events: { event: [Function] },
  _eventsCount: 1,
  _maxListeners: undefined }
```

---
## Revision

What does `this` refer to inside of a callback registered to listen to an event on an `EventEmitter`?
???

* The instance of `EventEmitter`
* `global`
* `event`
* `window`
