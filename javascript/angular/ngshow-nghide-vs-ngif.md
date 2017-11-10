# ngShow/ngHide VS. ngIf
author: achatt89

levels:

  - beginner
  - basic

type: normal

category: must-know

---
## Content

The `ngShow / ngHide` directive shows or hides the given HTML element based on the expression provided to the `ngShow`
attribute. 

The element is shown or hidden by removing or adding the `ng-hide` CSS class onto the element.

#####In your view:
```html
<!-- when $scope.myValue is true -->
<div ng-show="myValue">...</div>
<!-- The above shows the element -->

<!-- when $scope.myValue is false -->
<div ng-show="!myValue">...</div>
<!-- The above hides the element -->
```

The `ngIf` directive removes or recreates a portion of the DOM tree based on an expression. 

If the expression assigned to ngIf evaluates to a false value then the element is removed from the DOM, otherwise 
a clone of the element is reinserted into the DOM.

The scope created within `ngIf` inherits from its parent scope using **prototypal inheritance**.

#####In your view:
```html
<!-- This will show the DOM 
element below -->
<div ng-if='true'>...</div>

<!--This will remove the DOM 
element below-->
<div ng-if="0">...</div>
```

---
## Revision

Complete the following HTML code to remove
the element from the DOM.

```html
<div ???>
    Please Remove Me!!
</div>
```

* `ng-show="false"`
* `ng-hide="true"`
* `ngIf="true"`
* `ng-if="false"`
* `ng-if="true"`