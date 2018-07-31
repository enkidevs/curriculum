---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.layout-html.0: 10
  web.semantic-html.0: 10
  web.semantic-html.1: 10
  web.semantic-html.3: 10

aspects:
  - introduction
  - workout
  - deep

links:
  - '[MDN docs for aside](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/aside){website}'
  - '[W3S docs for aside](https://www.w3schools.com/tags/tag_aside.asp){website}'

---
# Aside
---
## Content

The HTML `<aside>` element is a container element used to represent a section of a page that consists of content that is tangentially related to the content around the `<aside>` element. This content is held separate from the page content and frequently presented as sidebars or call-out boxes.

The `<aside>` element can contain a sidebar, pull quotes, advertising, groups of navigational `<nav>` elements and more.

Example:
```
<p>
  My family and I visited
  the Louvre this summer.
</p>
<aside>
  <h4>Louvre Museum</h4>
  <p>
    The Louvre Museum is the world's
    largest art museum in Paris, France.
  </p>
</aside>
```

---
## Practice

What content would be well placed within an aside?

???

* all 4 of these choices
* pull quotes
* sidebar
* advertising
* groups of `<nav>` elements

---
## Revision

Which HTML container element represents a section of a page that consists of content that is tangentially related to the content around the aside element, and which could be considered separate from that content?

???

An `<aside>` should usually contain a navigation list on either the left- or right-hand side of the webpage.

???

* `<aside>`
* `<article>`
* `<section>`
* `<comment>`
* `<news>`
* `<record>`
* `<forum>`
* False
* True

---
## Quiz

### How much do you know about HTML container elements?

What container element would best be used here?

```
<p>
  My family and I visited
  the Louvre this summer.
</p>
<TAG>
  <h4>Louvre Museum</h4>
  <p>
    The Louvre Museum is the world's
    largest art museum in Paris, France.
  </p>
</TAG>
```

TAG: ???

* `<aside>`
* `<main>`
* `<block>`
* `<article>`
* `<section>`
