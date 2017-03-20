# Destroy Events and their uses
author: achatt89

levels:

  - medium

  - advanced

type: normal

category: must-know

---
## Content

There are two ways to destroy an event in AngularJS application scope.

The first one is an AngularJS event, `$destroy`, and the second one is a jqLite / jQuery event `$destroy`. 

The difference being, that the the AngularJS __$destroy__ removes the current scope (and all of its children) from the parent scope. The AngularJS `$destroy` can be used by AngularJS scopes where they are accessible, such as in controllers or link functions.

Consider the two below happening in a directive’s postLink function. 

The AngularJS event:

```
scope.$on(‘$destroy’, function () {
  // handle the destroy, i.e. clean up
});

```

and

```
element.on(‘$destroy’, function () {
  // respectful jQuery plugins already
  // have this handler.
  //
  // angular.element(document.body).
  //      off(‘someCustomEvent’);
});

```

The jqLite / jQuery event is called whenever a node is removed, which may just happen without scope teardown.

---
## Revision

How to call destroy event angular way?

```
???('$destroy', function() {
    // Do Something...
});
```

* `scope.$on`
* `$scope.$on`
* `element.$on`
* `element.on`
