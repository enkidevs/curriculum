---
author: mihaiberq

levels:
  - beginner

type: normal

aspects:
  - introduction
  - workout
  - deep

category: must-know

inAlgoPool: false

links:
  - '[Scrimba CSS Width and Height](https://scrimba.com/p/pWvwCg/cPvRvAV){website}'
  - '[MDN Docs on Display](https://developer.mozilla.org/en-US/docs/Web/CSS/display){documentation}'  


---

# The `display` Property

---
## Content

Alongside `box-sizing`, another important property that sets how much space an element should occupy is `display`.

It specifies the rendering box used for an element, which can add another layer to the already existing ones (content, padding, border, margin). The three most important types of `display` are `block`, `inline` and `inline-block`.

In short, a **block** element occupies the whole width of the page and no other element is allowed to be place to the left and right of it.

An **inline** element can be *part* of a `block` element and more `inline` elements can exist on the same line. They also **do not accept** top and bottom padding and margin.

**Inline-block** elements are somewhere in the middle: it creates a `block` element, that can be surrounded with other elements, as if it was `inline`.

Even though most browsers have the same default `display` values for HTML elements, there are some exceptions, which will be discussed in future insights.

The `none` value of `display` is also worth mentioning. In this case, the browser will behave like the element doesn't exist in the document tree and  won't be rendered at all. When used, the element's descendants also have their display turned off.

---
## Practice

Which of the following elements does not accept top and bottom margin?

???

* Inline
* Block
* Inline-block
* Those that have `display:none`

---
## Revision

How does `display:none` affect the element's descendants?

???

* They won't be displayed either.
* It does not affect them.
* They will be invisible, but clickable.
