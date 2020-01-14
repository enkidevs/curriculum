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

Some applications can include a special behavior that happens whenever it is closed. This behavior can be used to free up resources, close a connection to a databases (or anything else), and for the remainder of this insight we will call it `closedown`.

Suppose the application throws an unexpected exception, which is then caught followed by the `closedown` method being called before terminating the application (which is the expected behavior).

Now, let's say the the application throws 5 unexpected exceptions at the same time. This will lead to the `closedown` method being triggered 5 times concomitantly which might lead to issues in the shutdown procedure.

The trigger of this procedure is done through an `uncaughtException` event, and you want a way to listen to this just once.

To achieve this, only the first instance of an uncaught exception being caught should be used. By calling the `.once` method to our emitter (in our case the emitter is called `test`, which would lead to us calling `test.once`):

```javascript
test.once("uncaughtException", function(
  err
) {
  closeApp(function(err) {
    // log error
  });

  // exit
  test.exit(1);
});
```

This doesn’t solve the issue entirely. If two `uncaughtException`s do occur, the second will trigger an instant process shutdown, interrupting and overriding the `closedown` method currently in progress. To avoid this, log each uncaught exception:

```javascript
test.once("uncaughtException", function(
  err
) {
  console.error(
    "uncaught exception: ",
    err.stack || err
  );
});
```

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
test.???('uncaughtException',
    function(err) {
      // handler
    }
```

* once
* on
* catch
* one
* onOnce
 
