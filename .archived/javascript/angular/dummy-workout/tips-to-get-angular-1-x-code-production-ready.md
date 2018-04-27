---
author: achatt89

levels:

  - medium

  - advanced

type: normal

category: best practice

---
# Tips to get Angular 1.x code production ready

---
## Content

There are few things that can be done to get the angular application production ready. These are some of the best practices followed.

### Strict *Dependency Injection* Mode:

Using strict DI mode in the production app will throw errors when a function to be injected is not _annotated properly_.
This mode is useful and is intended to make sure that code will work when minified.

It is recommended to automate the explicit annotation via `ng-annotate` when deploying to production along with strict DI mode.

```js
angular.bootstrap(document, ['myApp'],
{
  strictDi: true
});
```
or

```html
<div ng-app="myApp" ng-strict-di>
    <!-- your app code here -->
</div>
```

### Disabling comments and CSS class directives:

If you are sure that your project only uses element and attribute directives, 
you can disable the compilation of directives on element classes and comments for the whole application.

```js
$compileProvider.
    commentDirectivesEnabled(false);
$compileProvider.
   cssClassDirectivesEnabled(false);
```

### Disabling Debug Data:

As a result of `ngBind`, `ngBindHtml` or `{{...}}` interpolations, 
binding data and CSS class `ng-binding` are attached to the corresponding element

Tools like _Protractor_ and _Batarang_ need this information to run, but you can disable this in 
production for a significant performance boost with:

```js
myApp.config(['$compileProvider', 
  function ($compileProvider) {
    $compileProvider.
        debugInfoEnabled(false);
  }
]);
```

```js
angular.reloadWithDebugInfo();
```

You can make use of the information or code above in the debugging console.
    
---
## Practice

What all enables the strict DI mode in angularJS during bootstraping?
```html
<div ng-app="appName" 
        ???>
    <!-- My App Code -->
</div>
```
* `ng-strict-di`
* `strictDi: true`
* `ng-strict`
* `ng-strict='true'`

---
## Revision

How to disable comments in angularJS App?
```js
$compileProvider.
        ???;
```
* `commentDirectivesEnabled(false)`
* `cssDirectivesEnabled(false);`
* `commentDirectivesEnabled(false);`
* `cssClassDirectivesEnabled(false)`
