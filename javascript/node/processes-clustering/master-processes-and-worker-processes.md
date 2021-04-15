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
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Master Processes and Worker Processes


---

## Content

The *Cluster* module allows you to identify the master process as follows:

```javascript
if(cluster.isMaster) { ... }
```

The master process is the process which a user initiates, there is only one master process. The master  process then initiates worker processes using the `fork()` method as follows:

```javascript
cluster.fork();
```

There can be as many or as few worker processes as required, all sharing the same server port handling incoming requests to the server.

A *Worker* object contains all the worker's public information and methods.

In the master this can be obtained using the command `cluster.workers`. In a worker this can be obtained using `cluster.worker`.


---

## Practice

What does the following line of code do? ???

```javascript
if (cluster.isMaster) { ... }
```

- Identifies the master process.
- Sets the master process.
- Sets the master process to null.


---

## Revision

Which method is used by the master process to initiate new worker processes? ???

- cluster.fork();
- master.fork();
- cluster.new();
- master.new();
- cluster.process();
- master.process();
