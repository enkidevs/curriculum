# Listening to events just once
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

---
## Content

If more than one uncaught exception was to be caught, the applications equivalent to a `closedown` method would be triggered more than once, consequently causing issues with the applications shutdown procedure.

To only call the `closedown`  method once, only the first instance of an uncaught exception being caught should be used. This is done using `emitter.once` , for example, if an applications emitter was to be called *test*:
```
test.once(‘uncaughtException’,
                  function(err) {

  closeApp(function(err) {
    // log error
  });


  // exit
  test.exit(1);

});
```

This doesn’t solve the issue entirely as if two `uncaughtException`s do occur the second will trigger an instant process shutdown, interrupting and overriding the `closedown` method current in progress. To avoid this, log each uncaught exception:

```
test.on(‘uncaughtException’, function(err) {

  console.error(‘uncaught exception: ‘,
                          err.stack || err);

});
```


---
## Practice

Which method is used to catch only the first instance of an uncaught exception?
???

* `.once`
* `.first`
* `.instance`

---
## Revision

Complete the code snippet to define the callback function to catch an event just once:
```
test.on('???', function(err) {
```

* `uncaughtException`
* `error`
* `event`
