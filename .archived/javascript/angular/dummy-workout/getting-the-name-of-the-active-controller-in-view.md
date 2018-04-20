---
author: achatt89

levels:

  - medium

type: normal

category: how to

---
# Getting the name of the active controller in view

---
## Content

If you ever wanted to get the name of the active controller in the view, here's a neat way to do it:

The code below uses global scope variable: `$rootScope` to keep a track of the route changes.

**This code only works for `ng-route` module**

In app.js (or the JS file where you bootstrap your angular application with routing), write a run block with the following code:

```js
angular.run(function($rootScope) {
$rootScope.$on('$routeChangeSuccess',
  function(ev, data) {
    if (data.$$route && 
          data.$$route.controller)
       {
          $rootScope.controller = 
               data.$$route.controller;
       }
   });
})
```
This assigns the `$rootScope.controller` object with the current name of the controller, which later can be retrieved in the view to use it as seemed fit. 

**Example**:
```html
<div>
    Active Controller Name: {{controller}}
</div>
```

---
## Revision

Complete the following HTML code to remove
the element from the DOM.

```js
angular.run(function($rootScope) {
???.$on('$routeChangeSuccess',
  function(ev, data) {
    if (data.??? && 
          data.$$route.controller)
       {
          $rootScope.controller = 
               data.$$route.controller;
       }
   });
})
```

* `$rootScope`
* `$$route`
* `$rootscope`
* `$route`
* `$scope`
