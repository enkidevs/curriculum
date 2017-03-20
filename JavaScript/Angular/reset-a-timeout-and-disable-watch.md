# Reset a $timeout() and disable $watch()
author: achatt89

levels:

  - basic

  - medium

type: normal

category: must-know

---
## Content

`$timeout()` is the angular version of JS's `setTimeout()` function. [1]
The only difference being, that although `setTimeout()` can be used in an Angular application, we also need to use `$scope.$apply()` to trigger the digest cycle so that the changes to the scope are reflected elsewhere (i.e. in a data-bound view)

When you create a data binding from somewhere in your view to a variable on the $scope object, AngularJS creates a "watch" internally. A watch means that AngularJS watches changes in the variable on the $scope object.

The key to both is assigning the result of the function to a variable.

To cleanup the timeout, just `cancel($timeout)` it:

```
var customTimeout=$timeout(function() {
  // arbitrary code
}, 55);

$timeout.cancel(customTimeout);
```

The same applies to `$interval()`.

To disable a watch, you can just call the method object assigned to the $watch.

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
var timeoutFn=$timeout(function() {
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
repeatedly after every set time-frame until it is cancelled. `$interval()` is similar to `setInterval()` in JS.