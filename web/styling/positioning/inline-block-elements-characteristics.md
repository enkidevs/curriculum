---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elements){documentation}'


---

# Inline-block Elements Characteristics

---

## Content

There aren't any _inline-block_ elements per se: they are _inline_ elements that accept some _block-specific_ properties.

With that being said, the `inline-block` behavior has the following characteristics:

- It can fit on the same line as other `inline` or `inline-block` elements (inline)
- Its `height`, `line-height`, `top-margin` and `bottom-margin` can be specified (block)
- Its width defaults to 100% of its containing element, but it can be changed. (block)

The only elements which inherently _behave_ like this are _replaced elements_, such as `img`, `video` or _form elements_, like `input` and `textarea`.

What's so special about replaced elements is that they have internal sizes (think of an 1024×768 image) and can be rendered without manually specifying their `width` or `height`.

In short, `inline-block` is trying to replicate the behavior of replaced elements and make it available to others.

---

## Revision

Whose behavior is `display:inline-block` trying to replicate?

???

- Replaced elements'
- Inline elements'
- Block elements'
- Newer elements'
