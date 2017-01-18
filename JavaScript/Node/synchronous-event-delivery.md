# Synchronous event delivery
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must-know

links:


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

---
## Revision

When emitting events, ??? will be called before `emitter.emit` returns.

* listeners
* callbacks
* event functions
