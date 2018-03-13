---
author: Mathieu

levels:

  - advanced

  - medium

type: normal

category: hack

tags:

  - future


links:

  - '[addyosmani.com](http://addyosmani.com/blog/be-careful-when-using-null-transform-hacks-to-force-gpu-acceleration/){website}'
  - '[dev.w3.org](http://dev.w3.org/csswg/css-will-change/){website}'

notes: 'http://www.creativebloq.com/css3/tips-breathe-new-life-your-css-61411880'

---

# Prepare for `will-change`

---
## Content

If you've used `-webkit-transform: translateZ(0)` to magically make your pages faster, the hack, which in many browsers simply creates a new compositor layer, is being replaced by `will-change`. 

Soon, you'll be able to tell the browser what you plan to change about an element (its position, size, contents or scroll position) and the browser will apply the right optimisation under the hood.

---
## Revision

In what way does `will-animate` make your pages run faster? ???


* It makes animations run faster.
* It makes code faster.
* It helps people read your page faster.

