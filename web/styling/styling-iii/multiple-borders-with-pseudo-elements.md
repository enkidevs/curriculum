---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack


links:

  - '[css-tricks.com](https://css-tricks.com/snippets/css/multiple-borders/){website}'


---

# Multiple borders with pseudo elements

---
## Content

`::after` and `::before` pseudo-elements can be used to add more borders to an element.
These must be either set being larger and behind the element or smaller and inside (but parent element must be positioned on top).

Keep in mind that the element with multiple borders needs its own border and a non-static position.

```css
.elem {
  position: relative;
  border: 5px solid #00ff00;
}
```
Add the second border:

```css
.elem::after {
  content: '';
  position: absolute;
  top: -15px;
  left: -15px;
  right: -15px;
  bottom: -15px;
  background: red;
  z-index: -1;
}
```

![svgcode.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0D%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%20%20preserveAspectRatio=%22xMidYMid%20meet%22%20xmlns=%22http://www.w3.org/2000/svg%22%3E%0D%0A%09%3Cg%3E%0D%0A%09%09%3Crect%20x=%220%22%20y=%220%22%20width=%22800px%22%20height=%22300px%22%20fill=%22#596193%22%20/%3E%0D%0A%09%09%3Crect%20x=%22262.5%22%20y=%2262.5%22%20width=%22275px%22%20height=%22175px%22%20fill=%22orangered%22%20/%3E%0D%0A%09%09%3Crect%20x=%22275%22%20y=%2275%22%20width=%22250px%22%20height=%22150px%22%20fill=%22#fff%22%20stroke=%22#52df00%22%20stroke-width=%225%22/%3E%0D%0A%09%09%0D%0A%09%3C/g%3E%0D%0A%3C/svg%3E%09)

`z-index: -1` will keep the border behind the content preserving,for example, selectability of text and clickability of links.

---
## Practice

Which pseudo-elements can be used to add extra borders to an element?

???


* ::after and ::before
* ::pre and ::post
* ::prior and ::since

---
## Revision

Which two pseudo elements can be used to add more borders to an element?

???


* :after and :before
* :post and :pre
* :after and :previous
* :post and :before

