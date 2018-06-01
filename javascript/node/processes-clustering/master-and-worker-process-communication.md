---
author: tommarshall

levels:
  - basic
  - advanced
  - medium

type: normal

category: tip

standards:
  javascript.node-standard-library-os.5: 20

tags:
  - workout
  - deep

---

# Master and Worker Process Communication

---

## Content

Messages can be sent between the _master_ process and its _worker_ processes to assign tasks, return that tasks are completed, and other operations.

An event listener for the message event must be set up in both the master and its workers.

To listen for messages in the _master_ from a _worker_:

```javascript
worker.on('message', function(message) {
  console.log(message);
});
```

To listen for messages in a _worker_ from the _master_:

```javascript
process.on('message', function(message) {
  console.log(message);
});
```

Messages can be sent as strings or serializable objects.
To send a message from the _master_ to a _worker_:

```javascript
worker.send('From master to worker...');
// or
worker.send({ data: [1, 2, 3] });
```

To send a message from a _worker_ to a _master_:

```javascript
process.send(
  'From worker to master..., \
             with ID num: ' + process.pid
);
```

---

## Practice

Complete the following snippet to listen for messages in the _master_ from a _worker_:

```javascript
???.on('???', function(message) {
   console.log(message);
});
```

- worker
- message
- call
- master
- child
- action
- change
- running

---

## Revision

The following code snippet should send a string message from the **master** process to a **worker**. Complete the gaps in order to accomplish this functionality:

```javascript
???.???('From master to worker..');
```

- worker
- send
- on
- master
- process
