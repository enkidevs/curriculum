---
author: Mathieu

levels:

  - beginner

type: normal

category: must-know

aspects:
  - introduction

inAlgoPool: false

links:

  - '[MDN Docs on Inline Elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Inline_elemente){documentation}'

---

# Inline Elements Characteristics

---
## Content

An inline element has the following characteristics:

* It begins on the same line as its siblings
* Its `height`, `line-height`, `top-margin` and `bottom-margin` can't be changed
* Its width is as wide as the content and can't be modified

Examples of inline elements include `<span>`, `<a>`, `<label>`, `<input>`, `<img>`, `<strong>` and `<em>`.

Example of useless CSS:

```css
span {
  height: 20px; /* no effect! */
  top: 20px; /* no effect! */
}

```

---
## Practice

Which of the following elements is * not * an inline element?

???

* `<form>`
* `<label>`
* `<strong>`
* `<input>`

---
## Revision

Which of the following elements is not inline?

???

* `<p>`
* `<em>`
* `<span>`
* `<input>`
* `<img>`
