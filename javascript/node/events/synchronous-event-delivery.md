---
author: tommarshall
type: normal
category: must-know
tags:
  - introduction
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Event Delivery


---

## Content

Node is asynchronous, however as no I/O is involved in emitting events, the delivery of events is treated synchronously. Therefore:

```javascript
const EventEmitter = require('events')
  .EventEmitter;

const emitter = new EventEmitter();

emitter.on('hi', function() {
  console.log('hi!');
});

emitter.on('hi', function() {
  console.log('hi again!');
});

console.log('pre hi');
emitter.emit('hi');
console.log('post hi');
```

Gives the following output:

```plain-text
pre hi
hi!
hi again!
post hi
```

Remember that when emitting events, listeners will be called before `emitter.emit` returns.


---

## Revision

How is the delivery of events treated in Node?

???

- synchronously
- asynchronously
- instantly
- random
