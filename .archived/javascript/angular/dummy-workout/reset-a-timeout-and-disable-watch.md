---
author: achatt89

levels:

  - basic

  - medium

type: normal

category: must-know

---
# Reset a `$timeout()` and disable `$watch()`

---
## Content

`$timeout()` is the **Angular** version of **JavaScript**'s `setTimeout()` function. [1]

Note the difference that, although you can use `setTimeout()` in **Angular** applications, you also need to use `$scope.$apply()` to trigger the digest cycle so that the changes to the scope are reflected elsewhere (i.e. in a data-bound view).

When you create a data binding from somewhere in your view to a variable on the `$scope` object, **AngularJS** creates a **watch** internally.

A watch means that **AngularJS** will watch changes of the variable in the `$scope` object.

The key to both is assigning the result of the function to a variable.

To cleanup the timeout, you can call `cancel($timeout)` on it:

```
// assign function result to variable
var customTimeout = $timeout(function() {
  // arbitrary code ran after 55 ms
}, 55);

// cancelling the timeout
$timeout.cancel(customTimeout);
```

The same applies to `$interval()`.

To *disable a watch*, you can just call the method object assigned to the `$watch`.

```
var deregisterWatchFn = 
  $rootScope.$watch(‘someProperty’, 
  function (newVal) {
    if (newVal) {
    // we invoke that deregistration
    // function to disable the watch
    deregisterWatchFn();
    ...
  }
});
```

---
## Revision

Complete the code to cancel the timeout:

```
var timeoutFn = $timeout(function() {
  // some random code
}, 1000);

$timeout.???;
```

* `cancel(timeoutFn)`
* `cancel()`
* `cancel`
* `stop(timoutFn)`

---
## Footnotes

[1:`$timeout()` & `$interval()`]
`$timeout()` is used to execute a task after a certain time period, where as `$interval()` repeats a set of code
repeatedly after every set time-frame until it is cancelled. 

`$interval()` is similar to `setInterval()` in **JavaScript**.
