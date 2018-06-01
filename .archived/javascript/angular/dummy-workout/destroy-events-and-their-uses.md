---
author: achatt89

levels:

  - medium

  - advanced

type: normal

category: must-know

---
# Destroy Events and their uses

---
## Content

There are two ways to destroy an event in AngularJS application scope.

The first one is the **AngularJS** event, `$destroy`, while the second one is the **jqLite** / **jQuery** event `$destroy`. 

The difference between them is that the the former `$destroy` in **AngularJS** removes the current *scope* (and all of its children) from the *parent scope*. It can be used wherever scopes are accessible, such as in controllers or link functions.

Consider the two scenarios below, happening in a `directive`’s postLink function. 

The **AngularJS** event:

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

The **jqLite / jQuery** event is called whenever a node is removed, which may just happen without **scope teardown**.

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
