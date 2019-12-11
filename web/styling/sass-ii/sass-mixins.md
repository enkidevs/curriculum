---
author: tommarshall

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - workout
  - deep

links:

  - '[Structure of a Stylesheet](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#sassscript){website}'


---

# Sass Mixins

---
## Content

A *mixin* is used to allow you to create groups of CSS declarations which you can then reuse throughout your website. A good use for a mixin is for vendor prefixes.

*Mixins* can contain CSS rules, and anything which is allowed in a Sass document. They can take arguments which allows you to produce a large combination of style with only a few mixins.

```css
@mixin border-radius($radius) {
  -webkit-border-radius: $radius;
     -moz-border-radius: $radius;
      -ms-border-radius: $radius;
          border-radius: $radius;
}
.box { @include border-radius(10px); }
```
Generating your CSS would produce this:
```css
.box {
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  -ms-border-radius: 10px;
  border-radius: 10px;
}
```

---
## Revision

What's the main advantage of Sass Mixins taking arguments? ???

* Large combinations of styles with only a few mixins.
* Flexible values.
* Mixins can be reused throughout a site.
