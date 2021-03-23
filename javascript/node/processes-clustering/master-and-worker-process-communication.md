---
author: tommarshall
type: normal
category: tip
tags:
  - workout
  - deep
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

# Master and Worker Process Communication


---

## Content

Messages can be sent between the *master* process and its *worker* processes to assign tasks, return that tasks are completed, and other operations.

An event listener for the message event must be set up in both the master and its workers.

To listen for messages in the *master* from a *worker*:

```javascript
worker.on('message', function(message) {
    console.log(message);
});
```

To listen for messages in a *worker* from the *master*:

```javascript
process.on('message', function(message) {
    console.log(message);
});
```

Messages can be sent as strings or serializable objects.
To send a message from the *master* to a *worker*:

```javascript
worker.send('From master to worker...');
// or
worker.send({data: [1, 2, 3]});
```

To send a message from a *worker* to a *master*:

```javascript
process.send('From worker to master..., \
             with ID num: ' + process.pid);
```


---

## Practice

Complete the following snippet to listen for messages in the *master* from a *worker*:

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
