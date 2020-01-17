---
author: tommarshall

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know

tags:
  - introduction
  - workout

parent: consuming-events

aspects:
  - introduction
  - workout


---
# Listening to events just once

---
## Content

Events are actions that happen within your JavaScript application and are signalled by the system such that we can *react* to them. This is a frequent technique with multiple applications including handling asynchronous code (e.g. child processes) and processing continuous streams of information (e.g. read a really long file). 

We can choose what events to react to through an event listener. However, there might be cases when reacting to these events every time they happen can cause undesired side effects. In this case, it might be useful to **listen to events just once**.[1] -> footnote about the fact that all such operations are non-idempotent + link to some external resources

Let's look at an example to see how this can translate into practice. Picture a node application with a database. Whenever our application crashes unexpectedly we want to free up the database resources. Yet, if we run the "fee database resources" operation twice, this can cause undesired errors on the database layer.

Normally, we'd *listen to* uncaught error events like this:

```js
process.on('uncaughtException', (err) => {
  console.error('There was an uncaught error', err)
  closeDBConnection();
  process.exit(1) // signals that process ended with an error (as per Node docs) 
});
```

Now, let's say the application throws 5 unexpected exceptions at the same time. This will lead to this procedure being triggered 5 times concomitantly which might lead to issues in the database shutdown procedure (as mentioned earlier).

To **listen to events just once** you would call `process.once` instead:

```js
process.once('uncaughtException', (err) => {
  console.error('There was an uncaught error', err)
  closeDBConnection();
  process.exit(1) // signals that process ended with an error (as per Node docs) 
});
```

Voilà, this will ensure that we'll react only to the first emitted `uncaughtException` event.

---
## Practice

Which method is used to add a one-time listener function to an event emitter?

???

* .once
* .first
* .instance

---
## Revision

Complete the code snippet to define the callback function to catch an event just once:
```javascript
test.???('uncaughtException', (err) => {
  console.error('There was an uncaught error', err)
  closeDBConnection();
  process.exit(1)
});
```

* once
* on
* catch
* one
* onOnce
 
