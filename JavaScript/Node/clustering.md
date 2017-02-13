# Clustering
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

links:

  - >-
    [codeforgeek.com](https://codeforgeek.com/2014/12/cluster-node-js-performance/){website}

---
## Content

**Node** processes run in a single thread limited by default to `512Mb` on `32-bit` machines and `1Gb` on `64-bit`.

 In order to avoid processing power bottlenecks the `cluster` module can be used to split a single process into multiple ones (*workers*). Child processes share the same server ports with the master process.

Import the cluster module:
```javascript
var cluster = require('cluster');

```
As a cluster module executes the same **Node** process multiple times, you need to find what portion of the code is executed by the children or master.
Identify the master process:
```javascript
if(cluster.isMaster) { ... };
```
You can then initiate the master process, as this will initiate other worker processes:
```javascript
cluster.fork();
```

The most common events contained by `cluster` are the `online` and `exit` events. These are emitted either when the worker process is forked or when the worker process is terminated.

---
## Practice

Initiate a new worker process.

```javascript
???.???;
```

* `cluster`
* `fork()`
* `master`
* `init()`
* `worker`
* `worker()`

---
## Revision

Identify if the code is executed by the master process:
```javascript
var cluster = require('cluster');
if(cluster.???){
};
```

* `isMaster`
* `master`
* `notChild`
* `child`
