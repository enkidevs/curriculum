---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

aspects:
  - introduction
  - workout

category: feature


links:

  - '[Browser Availability for position:sticky](http://caniuse.com/#feat=css-sticky){website}'
  - '[Stick Your Landings](http://updates.html5rocks.com/2012/08/Stick-your-landings-position-sticky-lands-in-WebKit){website}'

notes: ''

---

# Position elements with  `position: sticky`

---
## Content

`position: sticky` is a new way to position elements and is conceptually similar to `position: fixed`.

The difference is that an element with `position: sticky` behaves like `position: relative` within its parent, until a given offset threshold is met in the viewport.


By simply adding `position: sticky` (vendor prefixed), we can tell an element to be `position: relative` until the user scrolls the item (or its parent) to be 15px from the top:
```css
.sticky {
    position: sticky;
    top: 15px;
}
```

---
## Revision

Which of the following browsers *does not* support `position: sticky`? ???


* Chrome
* Firefox
* Safari
* iOS Safari
