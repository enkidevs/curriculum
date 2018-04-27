---
author: urish2

levels:

  - basic

  - beginner

type: normal

category: how to

---
# Hide unparsed view code using `ng-cloak`

---
## Content

While Angular loads users will see bunch of un-parsed view code such as `{{user.name}}`.

Use the `ng-cloak` CSS class to hide your view's content until Angular has loaded.

In your CSS:
```css
.ng-cloak { display: none; }
```

In your view:
```html
<div class="ng-cloak">...</div>
```

Angular will automatically remove this class once the application has been loaded.

---
## Revision

Complete the following CSS code snippet using the `ng-cloak` class to hide the views content until Angular has loaded:

```javascript
??? {display: ???; }
```

* `.ng-cloak`
* `none`
* `hidden`
* `ng-cloak`
* `.ngcloak`
* `invisible`