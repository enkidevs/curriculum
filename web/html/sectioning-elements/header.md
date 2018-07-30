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
  - '[CodePen: Header Element](https://codepen.io/enkidevs/pen/NBrNPx){code}'
  - '[MDN docs for header](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header){website}'

---
# Header
---
## Content

The HTML `<header>` element is used to represent some introductory content.

This can be an introduction, some navigational aid, a graphical logo, the authors' name, a search form, display one or more heading (h1-h6) elements, and more.

You can also have multiple `<header>` elements on your web page, one for the primary layout and for each grouping of related content.

This example showcases two headers within a web page:
```
<header>
  <h1>Logo</h1>
</header>

<article>
  <header>
    <h1>
      First order 50% off!!
    </h1>
    <h2>Order pizza now</h2>
    <p>
    Order two pizza's get 2L Pepsi free!
    </p>
  </header>
  <p>
    We also have:
    We also have: Chicken, Pineapple,
    Ghost Peppers and more..
  </p>
</article>
```

The `<header>` container doesn't have any visual style without CSS. The CSS in this example may be a bit complex at this time, but hopefully it inspires you to learn more CSS! 
 
##### header-styled.svg

![header-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22174%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M311%20174H9c-4.97056%200-9-4.02944-9-9V55h320v110c0%204.97056-4.02944%209-9%209z%22%2F%3E%3Cpath%20fill%3D%22%233E94EC%22%20d%3D%22M320%2055H0V9c0-4.97056%204.02944-9%209-9h302c4.97056%200%209%204.02944%209%209v46z%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22124%22%20y%3D%22160%22%3ECopyright%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22DINCondensed-Bold%2C%20DIN%20Condensed%22%20font-size%3D%2228%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2238%22%3ELOGO%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2216%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22222%22%20y%3D%2294%22%3EHeader%3C%2Ftspan%3E%3C%2Ftext%3E%3Cg%20stroke%3D%22%23000%22%3E%3Cpath%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M227.70021%2062.5034l12.65015%2016.78731%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20d%3D%22M225.59386%2059.70817l7.80657%202.88228-7.18772%205.41633z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The `<header>` container doesn't have any visual style without CSS. The CSS in this example may be a bit complex at this time, but hopefully it inspires you to learn more CSS! 

<!--[View CodePen](https://codepen.io/enkidevs/pen/NBrNPx)-->

Even though you can have multiple `<header>` elements, you can't nest  `<header>` elements within another `<header>` element. Also, the `<header>` element can't be within a `<footer>` or an `<address>` element.

---
## Practice

The `<header>` element is encouraged to do which of the following?

???

 * All four
 * contain website navigation
 * display one or more heading (h1-h6) elements
 * hold a graphical logo
 * display authorship information

---
## Revision

Which container is best to organize the top of a web page or content section?

???

 * `<header>`
 * `<head>`
 * `<top>`
 * `<section>`
 * `<main>`
 * `<nav>`

---
## Quiz

### Anwer a quick question about the `<header>` element!

The HTML `<header>` element cannot what?

???

* be added within a `<footer>` element.
* contain website navigation
* display one or more heading (h1-h6) elements
* hold a graphical logo
* display authorship information
* have multiple `<header>` elements within the same doc.
