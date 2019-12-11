---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep

tags:

  - css

  - box-sizing

  - width

  - height

  - border-box


links:

  - '[Box Sizing](https://css-tricks.com/box-sizing/){website}'
  - '[MDN Docs on Box Sizing](https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing){documentation}'


---

# Use `box-sizing` to define an element's `width` and `height` properties

---
## Content

The default value for `box-sizing` is `content-box`. This setting indicates only the content is included in the total `width` and `height` properties.

Using `padding-box` will include the content and padding, but is only supported in Firefox.

The most popular value `border-box` will include content, padding and border. This makes working with percentages and building the layout easier, since the total `width` and `height` values include all three properties.

Both squares are initially defined as `250×250`. Because of the different `box-sizing` values, one expands because of the padding, while the other does not:

![HtmlToSvg.svg](https://img.enkipro.com/8019f434044c14af7e6fe2988d9849af.png)

---
## Practice

Which properties default value is `content-box` ?

???

* `box-sizing`
* `padding-box`
* `border-box`

---
## Revision

What's the default value for `box-sizing`?

???

* `content-box`
* `0`
* `undefined`
* `padding-box`
* `border-box`
