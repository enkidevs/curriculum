---
author: tommarshall

levels:
  - basic
  - advanced
  - medium

type: normal

standards:
  javascript.node-standard-library-os.5: 20

tags:
  - workout
  - deep

category: tip

---

# The Worker Class

---

## Content

Given NodeJS works on a single thread, you can still make use of all processing-power of multi-core systems by spawning **workers**.

A _worker_ object contains all the public information and methods from a worker.

From the _master_, the object can be obtained using `cluster.workers`. From a _worker_, the object can be obtained using `cluster.worker`.

The _worker_ class has many built in functions which can be used to obtain information from the worker.

Each new _worker_ is given a unique _workers_ _ID_, while the worker is alive, the ID number is the key that indexes it in `cluster.wokers`. To get the ID number:

```javascript
worker.id();
```

To check if a _worker_ is connected to its master via its _IPC_ channel. The function returns _true_ if connected, and _false_ if disconnected.

```javascript
if (worker.isConnected()) {
  process.send("Worker connected!");
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
