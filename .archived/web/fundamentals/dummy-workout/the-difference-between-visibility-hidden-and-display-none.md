---
author: vbaron

levels:

  - basic

  - beginner

type: normal

category: feature

tags:

  - css-ui-visibility-display

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/CSS/visibility){website}

---
# The difference between `visibility:hidden` and `display:none`

---
## Content

`visibility:hidden` defines that an element is rendered on the page but not visible. Space on the page will be allocated for this element.

`display:none` defines that an element is not rendered on the page and thus does not appear.
Unlike `visibility:hidden`, page space is not allocated for the element, allowing other elements to fill in.

Keep in mind that  `display:none` will trigger a DOM reflow, while `visibility:hidden` will not.

A reflow is a recomputation of the page's layout, calculating positions and dimensions, being an expensive process.

---
## Practice

Which of the following is the definition for `visibility: hidden` ? ???

* The element is rendered on the page however is invisible. Space on the page is allocated for the element.
* The element is rendered on the page however is invisible. Space on the page is not allocated for the element.
* The element is not rendered onto the page. Space on the page is not allocated for the element.
* The element is not rendered onto the page. Space on the page is allocated for the element.

---
## Revision

Which of the following is the definition for `display:none`? 

???
* The element is not rendered on the page so consequently does not appear, page space is not allocated.
* The element is rendered on the page but does not appear, page space is allocated.
* The element is not rendered on the page so consequently does not appear, page space is allocated.
* The element is rendered on the page but does not appear, page space is not allocated.