---
author: nene
type: normal
category: how-to
tags:
  - navigation
  - layout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Fixed navigation bar


---

## Content

To make a navigation bar stay fixed on top of the page when a user scrolls:

```css
.fixed-nav-bar {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 100;
  width: 100%;
  height: 50px;
  background-color: #00a087;
}
```

`z-index` property determines which element to display on top of the others. If two elements collide (they occupy the same space at the same time), the one with the higher `z-index` will be shown over the lower `z-index`.

It is important that the navigation bar has priority over every other element on the page, so its `z-index` value should be the largest. One way is to give it an astronomical value, such as 999999, but that is bad practice. The best way is to count the layers on your page and increase the index by a small, more relevant value for each layer.

In case you want the navigation bar at the bottom of the page, replace `top: 0;` with `bottom: 0;`.


---

## Practice

Which of the following properties will “glue” an element to its place?

???

- `position: fixed;`
- `z-index: 9999;`
- `position: relative;`
- `left:0px;`


---

## Revision

For a navigation bar to stay permanently at the bottom of a page when a user scrolls, what are the missing pieces of code below?

```css
.permanent-nav-bar {
   position: ???;
   ???: 0;
   left: ???;
   z-index: 9999;
   width: 100%;
   height: 50px;
   background-color: #00a087;
}
```

- `fixed`
- `bottom`
- `0`
- `stay`
- `permanent`
- `top`
- `100`
- `50`
