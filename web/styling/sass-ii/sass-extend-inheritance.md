---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

aspects:
  - workout
  - deep

links:

  - '[Article on @extend](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#extend){website}'


---

# Sass Extend/Inheritance

---
## Content

The `@extend` feature of *Sass* is one of its most useful features. Using `@extend` allows you to share a set of CSS properties between different selectors.

`@extend` is used when there is a case where one class should have all the same styles of another already defined class, plus its own specific styles.

```css
.message {
  border: 1px solid #6699ff;
  padding: 10px;
  color: #ffff66;
}
.success {
  @extend .message;
  border-color: green;
}
```
The code in CSS that this generates:
```css
.message, .success {
  border: 1px solid #6699ff;
  padding: 10px;
  color: #ffff66;
}

.success {
  border-color: green;
}
```

---
## Revision

Which is the correct way to use Sass @extend to extend the class *properties*? ???

* @extend .properties;
* properties(@extend);
* @extend(properties);
* extend .properties;
