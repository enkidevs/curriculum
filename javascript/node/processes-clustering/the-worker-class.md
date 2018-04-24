---
author: tommarshall

levels:
  - basic
  - advanced
  - medium

type: normal

standards:
  js.identify-common-design-patterns: 20
  js.node-standard-library-os: 20

tags:
  - workout
  - deep
  
category: tip

---
# The Worker Class

---
## Content

A *worker* object contains all the public information and methods from a worker.

From the *master*, the object can be obtained using `cluster.workers`. From a *worker*, the object can be obtained using `cluster.worker`.


The *worker* class has many built in functions which can be used to obtain information from the worker.


Each new *worker* is given a unique *workers* *ID*, while the worker is alive, the ID number is the key that indexes it in `cluster.wokers`. To get the ID number:
```javascript
worker.id();
```

To check if a *worker* is connected to its master via its *IPC* channel. The function returns *true* if connected, and *false* if disconnected.
```javascript
if (worker.isConnected()) {
  process.send('Worker connected!');
}
```

---
## Revision

Complete the following JS code snippet to check if a worked is connected to its master via its IPC channel:

```javascript
if (worker.???()) {
   ???.send('Worker connected!');
}
```


* isConnected
* process
* connected
* worker
* isIPC
* send

