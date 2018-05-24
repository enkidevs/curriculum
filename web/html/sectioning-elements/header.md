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
  - '[MDN docs for header](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/header){website}'

---
# Header
---
## Content

The HTML `<header>` element is used to represent some introductory content.

This can be an introduction, some navigational aid, a graphical logo, the authors' name, a search form, display one or more heading (h1-h6) elements, and more.

You can also have multiple `<header>` elements on your web page or document.

Example Main page Title and Logo within a `<header>`:
```
<header>
  <h1>Pizza Place!!</h1>
  <img src="pizza-logo.png"
       alt="Pizza logo">
</header>
```

Example of an Article Header:
```
<article>
  <header>
    <h1>
      First order 50% off!!
    </h1>
    <h2>Order pizza now</h2>
    <p>
    Order two pizza's get 1L Pepsi free!
    </p>
  </header>
  <p>
    We also have:
    Chicken, Beef, Veal and more..
  </p>
</article>
```

Even though you can have multiple `<header>` elements, you cant have a `<header>` nested within another `<header>` element. Also, the `<header>` element can't be within a `<footer>` or an `<address>` element.


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
