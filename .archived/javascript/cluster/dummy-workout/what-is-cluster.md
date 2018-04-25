---
author: tommarshall

levels:

  - basic

  - medium

  - beginner

type: normal

category: tip

---
# What is Cluster?

---
## Content

*Cluster* in *Node.js* allows you to create multiple seperate processes all sharing the same server port. 

The Cluster module allows child processes, known as workers, to share the server ports with the main Node process, known as the master. This allows your application to use more resources like multiple threads or CPU cores, hence improving performance. 

To use Cluster, require it into your *Node.js* file:
```javascript
var cluster = require('cluster);
```

Cluster is now ready to be used in your Node.js application! Here's an example of a *cluster* application keeping count of requests in the master process:
```javascript
if (cluster.isMaster) {
  for (var i = 0; i < 2; i++) {
    var worker = cluster.fork();
    
    // request listener
    worker.on('message', function(msg) {
      if (msg.cmd && msg.cmd == 
         'notifyRequest') {
        // incrementing the request count
        numReqs++;
      }
    });
  }
  setInterval(function() {
    console.log("numReqs =", numReqs);
  }, 1000);
```

---
## Revision

Complete the following JS code snippet to require cluster into your Node.js file:

```javascript
var cluster = ???('???');
```

* require
* cluster
* node
* use
* clustercore
* node-cluster