---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

aspects:
  - workout
  - deep

links:

  - '[Multiple Borders](https://css-tricks.com/snippets/css/multiple-borders/){article}'


---

# Multiple borders with pseudo elements

---
## Content

`::after` and `::before` pseudo-elements can be used to add more borders to an element.
These must be either set being larger and behind the element or smaller and inside (but the parent element must be positioned on top).

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

![svgcode.svg](https://img.enkipro.com/314f902f9748cf7e54dcf197adb0ca01.png)

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
