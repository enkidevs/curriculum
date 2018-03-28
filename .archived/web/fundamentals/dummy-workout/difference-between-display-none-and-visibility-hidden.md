---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

tags:

  - css

  - display

  - hidden

  - visibility

links:

  - >-
    [ccm.net](http://ccm.net/faq/791-major-difference-between-display-none-and-visibility){website}

---
# Difference between `display: none` and `visibility: hidden`

---
## Content

These two properties are commonly used to hide elements. The major difference between them is that `display: none` will hide the element and it will not appear on the page at all. `visibility: hidden` will hide the element but allow it to take up the same space it did before it was hidden.

For example for the following HTML code:
```html
<h3> Visible text </h3>
<h3 class="hidden"> Hidden text </h3>
<h3> More visible text </h3>
```
If `h3.hidden` is hidden using `visibility: hidden` the element will still take up the allocated space between the visible text whereas if `display: none` is used the space will not be preserved.

---
## Practice

Which of those properties won’t preserve the space allocated for the element?

???

* display: none
* visibility: hidden
* neither

---
## Revision

Which of those properties won’t preserve the space allocated for the element?

???

* display: none
* visibility: hidden
* neither