# Basic Building Blocks Of Angular Part - 2
author: achatt89

levels:

  - beginner

type: normal

category: must-know

---
## Content

This is a continuation from the previous _Basic Building Blocks of Angular Part - 1_

**$scope:**

The scope is the binding part between the HTML (view) and the JavaScript (controller).

The scope is an object with the available properties and methods.
The scope is available for both the view and the controller.

`$scope` is the _Model_ in the MVC structure.

`$scope` object is at the core of its amazing two-way data binding. The controller sets properties on the scope, 
and the view binds to those properties. `AngularJS` takes responsibility for keeping the two in sync. 

Here's a simple example:

```javascript
app.controller('angularController', 
    function($scope) {
        $scope.message = 'Hello Angular!';
});
```

```html
<div ng-controller="angularController">
  <input ng-model="message">
  <span>{{message}}</span>
</div>
```

In this example, the controller sets a property, message, on the scope. 
When AngularJS processes the `ng-model` directive in the view, it starts listening for change events 
on that input element and on the scope's message property. If the value of message changes, the input 
will update, and if the input changes, message updates.


**Directives**

Directives are the most important components of any `AngularJS` application. A directive is something that 
introduces new syntax. Directives are markers on a DOM element which attach a special behavior to it.

In the previous examples, both in _Part 1 and Part 2_ of the tutorial, keywords in the DOM such as
`ng-model` & `ng-controller` are nothing but directives. All these directives attach special behavior to DOM elements.

The basic idea behind directive is very simple. It makes your HTML truly interactive by attaching event 
listeners to the elements and/or transforming the DOM.

The above example of `ng-model` & `ng-controller` are internal directives. You can also create your own custom
directives.[1]

---
## Practice

How to define a scope variable in the controller?
???

* $scope.message
* $$scope.message
* $message

---
##Footnotes

[1: Custom Directives]
Custom Directive is an high level topic and will be covered later in the tutorial section.

For further reading on directives: [AngularJS Directives](https://docs.angularjs.org/guide/directive)
