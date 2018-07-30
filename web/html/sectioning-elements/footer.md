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
  - '[CodePen: Styled Footer](https://codepen.io/enkidevs/pen/PaXVmR){code}'
  - '[MDN: Footer](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/footer){website}'
  
---
# Footer
---
## Content

The HTML `<footer>` element is used to represent a footer for a whole document, or even footers of a grouping of related content as it is possible to have multiple `<footer>` elements. 

The `<footer>` element should contain some information about its containing element. That can be the author, some copyright information, a link to the terms of use, contact info, link back to the top of the page, a link to related documents, a sitemap, etc.

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

The `<footer>` container doesn't have any visual style without CSS. The CSS in this example may be a bit complex at this time, but hopefully it inspires you to learn more CSS! 
 
![footer-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22166%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M9%200h302c4.97056%200%209%204.02944%209%209v124H0V9c0-4.97056%204.02944-9%209-9z%22%2F%3E%3Cpath%20fill%3D%22%233E94EC%22%20d%3D%22M0%20133h320v24c0%204.97056-4.02944%209-9%209H9c-4.97056%200-9-4.02944-9-9v-24z%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22DINCondensed-Bold%2C%20DIN%20Condensed%22%20font-size%3D%2217%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22129%22%20y%3D%22154%22%3ECOPYRIGHT%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2216%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2220%22%20y%3D%22104%22%3EFooter%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20stroke%3D%22%23000%22%3E%3Cpath%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M55.69188%20125.4463l-12.35524-17.00554%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20d%3D%22M57.74913%20128.27786l-7.75507-3.01809%207.28115-5.29006z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)
 
<!--[View CodePen](https://codepen.io/enkidevs/pen/PaXVmR)-->
 
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
