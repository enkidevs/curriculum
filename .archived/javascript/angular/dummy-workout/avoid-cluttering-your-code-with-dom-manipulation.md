---
author: urish2

levels:

  - basic

  - beginner

type: normal

category: best practice

tags:

  - ''

notes: ''

links:

  - '[twitter.com](http://twitter.com/urishaked){website}'

---
# Avoid cluttering your code with DOM manipulation

---
## Content

Interacting with the DOM inside your controllers or services is considered bad practice.

Instead, Angular provides tools such as `ng-click`, `ng-repeat`, `ng-if` and `ng-model` to handle events and update your views.

Rather than using the common JQuery pattern:

```
$.get('/users/current', function(result) {
  $('#user-info .name').html(result.name);
});
```

Use instead:

```
$http.get('/users/current')
  .success(function(result)) {
    $scope.userName = result.name;
})
```

Then reference the `userName` variable within your view by enclosing it with double braces: `{{userName}}`.

---
## Revision

With what you should not interact inside controllers or services as it is considered a bad practice?

???

*`the DOM`
*`other controllers`
*`data`
*`css`
*`JQuery`
*`ng-click`