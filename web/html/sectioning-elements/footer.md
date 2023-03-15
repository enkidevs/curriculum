---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML <footer>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The footer Element


---

## Content

The HTML `<footer>` element is used to represent a footer for a whole document, or even footers of a grouping of related content as it is possible to have multiple `<footer>` elements.

The `<footer>` element should contain some information about its containing element. That can be the author, some copyright information, a link to the terms of use, contact info, link back to the top of the page, a link to related documents, a sitemap, etc.

Using `<footer>` for contact information:

```html
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

The `<footer>` container doesn't have any visual style without CSS. The CSS in this example may be a bit complex at this time, but hopefully it inspires you to learn more CSS!

![footer-styled](https://img.enkipro.com/3fc59ba0132a8c9562bc7b396ed4d893.png)

[View CodePen](https://codepen.io/enkidevs/pen/PaXVmR)


---

## Practice

The `<footer>` element is encouraged to contain which of the following?

???

- copyright or contact information, links to related or to the top of the page and sitemap
- `additional <footer> elements and to be added within <header> element.`
- display one or more heading (h1-h6) elements be used only once in a page for validation.
- hold a graphical logo or an image, passwords and/or other sensitive data


---

## Revision

Which container is best to organize the bottom of a web page or content section?

```html
<???>
```

- `footer`
- `foot`
- `bottom`
- `section`
- `main`
- `nav`


---

## Quiz

### How much do you know about the


`<footer>`

 HTML element?

The HTML `<footer>` element should NOT contain what?

???

- crucial information
- copyright information
- contact information
- links to related pages
- link back to top of page
- sitemap
