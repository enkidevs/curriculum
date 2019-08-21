---
author: fsites

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

aspects:
  - introduction
  - workout
  - deep

tags:
  - borders, border, :hover, hover

links:


---

# Default to a transparent `border-color` before adding a border to on `:hover` state elements

---
## Content

By using a transparent border as a default, then changing the `border-color` on hover, you will avoid moving other elements on hover.

Instead of:

```css
button:hover {
  border: 2px solid black;
}
```

Use this:
```css
button {
  border: 2px solid transparent;
}

button:hover {
  border-color: black;
}
```
The second example applies the same black border on `:hover` without pushing out the other page elements by `2px` in every direction.

[codepen](http://codepen.io/anon/pen/waEMWw)

---
## Revision

What does the following code do? ???
```css
label {
   border: 2px dotted transparent;
}

label:hover {
   border-color: black
}
```

* Makes the border black instead of transparent when the label is hovered over.
* Makes the border transparent instead of block when the label is hovered over.
* Makes the label solid instead of transparent when hovered over.
* Makes the label disappear when hovered over.
