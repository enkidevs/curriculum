# Position elements with  `position: sticky`
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

notes: ''

links:

  - '[caniuse.com](http://caniuse.com/#feat=css-sticky){website}'

  - >-
    [updates.html5rocks.com](http://updates.html5rocks.com/2012/08/Stick-your-landings-position-sticky-lands-in-WebKit){website}

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