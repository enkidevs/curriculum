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

aspects:
  - introduction
  - workout

links:
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer
  - https://www.w3schools.com/html/html5_semantic_elements.asp

---
# Footer
---
## Content

The HTML `<footer>` element is used to represent a footer for a whole document or a section. It is also possible to have multiple `<footer>` elements, one for each section. This element should contain some information about its containing element. That can be the author, some copyright information, a link to the terms of use, contact info, link back to the top of the page, a link to related documents, a sitemap, etc.

Using `<footer>` for contact information:
```
<footer>
  <p>
    Author: Jane Doe
  </p>
  <p>
  Contact:
    <a
      href="mailto:janedoe@example.com">
      janedoe@example.com
    </a>.
  </p>
</footer>
```

---
## Practice

The `<footer>` element is encouraged to contain which of the following?

???

* copyright or contact information, links to related or to the top of the page and sitemap
* additional `<footer>` elements and to be added within `<header>` element.
* display one or more heading (h1-h6) elements be used only once in a page for validation.
* hold a graphical logo or an image, passwords and/or other sensitive data

---
## Revision

Which container is best to organize the top of a web page or content section?

???

 * `<footer>`
 * `<foot>`
 * `<bottom>`
 * `<section>`
 * `<main>`
 * `<nav>`

---
## Quiz

### How much do you know about the `<footer>` HTML element?

The HTML `<footer>` element should NOT contain what?

???

* crucial information
* copyright information
* contact information
* links to related pages
* link back to top of page
* sitemap
