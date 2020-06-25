---
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction

inAlgoPool: false

links:
  - '[Scrimba CSS Width and Height](https://scrimba.com/p/pWvwCg/cPvRvAV){website}'
  - '[MDN Docs on Inline Elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elements){documentation}'

---

# Inline-block Elements Characteristics

---
## Content

There aren't any *inline-block* elements per se: they are *inline* elements that accept some *block-specific* properties.

With that being said, the `inline-block` behavior has the following characteristics:
 - It can fit on the same line as other `inline` or `inline-block` elements (inline)
 - Its `height`, `line-height`, `top-margin` and `bottom-margin` can be specified (block)
 - Its width defaults to 100% of its containing element, but it can be changed. (block)

The only elements which inherently *behave* like this are *replaced elements*, such as `img`, `video` or *form elements*, like `input` and `textarea`.

What's so special about replaced elements is that they have internal sizes (think of an 1024×768 image) and can be rendered without manually specifying their `width` or `height`.

In short, `inline-block` is trying to replicate the behavior of replaced elements and make it available to others.

---
## Revision

Whose behavior is `display:inline-block` trying to replicate?

???

* Replaced elements'
* Inline elements'
* Block elements'
* Newer elements'
