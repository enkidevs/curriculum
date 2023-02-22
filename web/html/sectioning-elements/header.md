---
author: Stefan-Stojanovic
type: normal
category: must-know
links:
  - >-
    [HTML <header>
    Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header){documentation}
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

# The header Element


---

## Content

The HTML `<header>` element is used to represent some introductory content.

This can be an introduction, some navigational aid, a graphical logo, the authors' name, a search form, display one or more heading (h1-h6) elements, and more.

You can also have multiple `<header>` elements on your web page, one for the primary layout and for each grouping of related content.

This example showcases two headers within a web page:

```html
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

![header-styled](https://img.enkipro.com/865e768f929302f23a0ba41de884bdc1.png)

[View CodePen](https://codepen.io/enkidevs/pen/NBrNPx)

Even though you can have multiple `<header>` elements, you can't nest  `<header>` elements within another `<header>` element. Also, the `<header>` element can't be within a `<footer>` or an `<address>` element.


---

## Practice

The `<header>` element is encouraged to do which of the following?

???

- All four
- contain website navigation
- display one or more heading (h1-h6) elements
- hold a graphical logo
- display authorship information


---

## Revision

Which container is best to organize the top of a web page or content section?

```html
<???>
```

- `header`
- `head`
- `top`
- `section`
- `main`
- `nav`


---

## Quiz

### Anwer a quick question about the


`<header>`

 element!

The HTML `<header>` element cannot what?

???

- `be added within a <footer> element.`
- contain website navigation
- display one or more heading (h1-h6) elements
- hold a graphical logo
- display authorship information
- `have multiple <header> elements within the same doc.`
