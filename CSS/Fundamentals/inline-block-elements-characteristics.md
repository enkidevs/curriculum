# Inline-block Elements Characteristics
author: mihaiberq

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

A `inline-block` element has the following characteristics:
 - It can fit on the same line as other `inline` or `inline-block` elements
 - Its `height`, `line-height`, `top-margin` and `bottom-margin` can be specified
 - Its width defaults to 100% of its containing element, but it can be changed.

The only elements that behave like this are `inline-block` are *replaced elements*, such as `img`, `video` or *form elements*, like `input` and `textarea`. They, however, *are not* `inline-block` elements: `img`s and `button`s are just `inline`.

What's so special about replaced elements is that they have internal sizes (think of an 1024×768 image) and can be rendered without specifying any `width` or `height`, practically independent of CSS.

In short, `inline-block` is trying to replicate the behavior of replaced elements and make it available to others.

---
## Revision

Whose behavior is `display:inline-block` trying to replicate?

???
*Replaced elements'
*Inline elements'
*Block elements'
*Newer elements'