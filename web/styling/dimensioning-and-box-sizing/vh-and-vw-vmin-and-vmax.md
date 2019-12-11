---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep

links:

  - '[Viewport Units](http://caniuse.com/#feat=viewport-units){website}'
  - '[MDN Docs on Length](https://developer.mozilla.org/en-US/docs/Web/CSS/length){documentation}'

notes: ''

---

# `vh` and `vw`, `vmin` and `vmax`

---
## Content

Responsive web design techniques rely heavily on percentage rules. `width` is relative to the nearest containing parent element. It is possible to use the width of the viewport instead of the width of the parent element using the `vh` and `vw` units.

The `vh` element is equal to 1/100 of the height of the viewport.

For example, here is a responsive square:
```css
.square {
    width: 20vh;
    height: 20vh;
}
```
The `square` class has the same value for width and height because the viewport might not be a square. For example, on a `1400×900` viewport, `20vw×20vh` would draw a `280×180` rectangle, not a square.

`vmin` is equal to the smallest of `vh` and `vw`, while `vmax` is the largest.
