---
author: Billiexu

levels:

  - advanced

  - medium

type: normal

category: must-know

aspects:
  - workout
  - deep

tags:

  - css

  - app

  - draganddrop

  - webdevelopment


links:

  - '[Article on CSS Selectors](http://www.sitepoint.com/future-generation-css-selectors-level-4/){Article}'


---

# Drag-and-Drop pseudo-class `:drop`

---
## Content

The `:drop` selector allows styling of the drop zone (the place where the element is supposed to be dropped), during the time when the user is dragging (or carrying) the element to be dropped.

```css
.spot {
  background: #ccc;
}

.spot:drop {
  background: hotpink;
}

```

The above CSS will apply a neutral gray background color to the .spot element when the user is not dragging. But when the user starts dragging to the `.spot` element, the background color will change and stay that way until the item is dropped.

---
## Revision

What will the following CSS code do whilst dragging and not dragging? ???
```css
.bg {
   background-color: white;
}

.bg:drop {
   background-color: red;
}
```


* Whilst dragging, the background colour is red. Whilst not dragging, the background colour is white.
* Whilst dragging, the background colour is white. Whilst not dragging, the background colour is red.
* The background colour is always red.
* The background colour is always white.
