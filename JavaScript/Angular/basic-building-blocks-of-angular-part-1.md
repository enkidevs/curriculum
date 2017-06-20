# Basic Building Blocks of Angular - Part 1
author: achatt89

levels:

  - beginner

type: normal

category: must-know

---
## Content

`Angular.js` is a client-side framework, it does not require a web server and can be used without one and viewed by opening the html file in the browser. 
A quick way of getting started is to create an `index.html` file and use the `Angular.js` files hosted at the `Google CDN` by including a script tag in the file:

```html
<!doctype html>
<html ng-app>
  <head>
    <title>My Angular App</title>
    <script src="angular CDN link"></script>
  </head>
  <body>
  </body>
</html>
```

An angular js application is made up its basic building blocks namely: 

**Modules:**

Angular uses modules to encapsulate code. A module is a container that can hold its own controllers, services, directives, etc. A module is defined like this:

```javascript
angular.module('angularApp', [])
```

This first argument is the name of the module and the second argument is an array of module names containing any dependencies of the module.

```html
<div ng-app="angularApp">
    'DO SOMETHING ANGULAR
</div>
```

This HTML snippet instantiates the module - `angularApp` to the DOM. The ng-app directive tells AngularJS that this is the root element of the AngularJS application.
You can only have one ng-app directive in your HTML document. If more than one ng-app directive appears, the first appearance will be used.

`AngularJS` apps don't have a main method something like in a basic Java file. Instead modules declarations' specify how an application should 
be bootstrapped. There are several advantages to this approach:
* The declarative process is easier to understand.
* You can package code as reusable modules.
* The modules can be loaded in any order (or even in parallel) because modules delay execution.
* Unit tests only have to load relevant modules, which keeps them fast.
* End-to-end tests can use modules to override configuration.

**Controllers:**

Controllers are the intermediary between the views and the models. The variables that are defined in the controller will be available in the view. 

_Note:_ An older but still valid syntax passes in $scope to the controller function. 
In Angular version 1.2 a new syntax was introduced using `Controller As` to define a variable and the keyword this to point to the controller:

js/controllers.js

```javascript
angular.module('angularApp',[])
.controller('angularController'
       ,[function($scope){
          $scope.person = {
              name: 'Abhijit',
              age: '28'
          }
}]);
```

_Note:_ In the snippet above, `$scope`[1] is passed to the function as a parameter. This just states that `$scope` is a dependency for the controller.

---
## Practice

How to bootstrap angular app in HTML?
???

* <div ng-app='angularAppName'></div>
* <div ngApps='angularAppName'></div>
* <div ng-apps='angularAppName'></div>

---
## Revision

How to create a controller?
???

* angular.module('angularApp',[]).controller('angularController', fn());
* angular.controller('angularApp',[]).controller('angularController', fn());
* angular.module('angularApp',[]).controllers('angularController', fn());

---
## Footnotes

[1: $scope]
**$scope** is a special Angular object which connects controller with the view. The values stored by controller in the $scope object has accessed in the view part.
_More information on it on the next insight: Basic Building Blocks of Angular - Part 2_
