# Synchronous event delivery
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: listening-to-events-just-once

links:

  - '[Synchronous Event Delivery](https://blog.yld.io/2015/12/15/using-an-event-emitter/#.WI4ybbaLQy4)'


---
## Content

Node is asynchronous, however as no I/O is involved in emitting events, the delivery of events is treated synchronously. Therefore:

```
var EventEmitter = require(‘events’)
                        .EventEmitter;
var emitter = new EventEmitter();

emitter.on(‘hi’, function() {

  console.log(‘hi!’);

});

emitter.on(‘hi’, function() {

  console.log(‘hi again!’);

});

console.log(‘pre hi’);
emitter.emit(‘hi’);
console.log(‘post hi’);
```

Gives the following output:
```
pre hi
hi
hi again
post hi
```
Remember that when emitting events, listeners will be called before `emitter.emit` returns.

---
## Revision

How is the delivery of events treated in Node?

???

* synchronously
* asynchronously
* random
