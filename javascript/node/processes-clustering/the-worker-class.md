---
author: tommarshall
type: normal
tags:
  - workout
  - deep
category: tip
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

# The Worker Class


---

## Content

Given NodeJS works on a single thread, you can still make use of all processing-power of multi-core systems by spawning **workers**.

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

## Practice

Considering `cluster` to be the master cluster, how would you get all child worker objects?

```javascript
// ...
var workers = ???.???
```

- cluster
- workers
- worker
- isMaster
- fromMaster
- getWorkers()
- allWorkers()


---

## Revision

Complete the following JS code snippet to check if a worked is connected to its master via its IPC channel:

```javascript
if (worker.???()) {
   process.send('Worker connected!');
}
```

- isConnected
- process
- connected
- worker
- isIPC
- send
