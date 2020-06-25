---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - deep

links:
  - '[MDN: <nav> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav){documentation}'
  - '[W3S: <nav> Element](https://www.w3schools.com/tags/tag_nav.asp){documentation}'

---
# The `<nav>` element

---
## Content

The HTML `<nav>` element is used to group the navigation of the page, such as primary website navigational links, table of contents, previous/next buttons, or breadcrumbs.

Example:
```html
<nav>
  <a href="index.html">Home</a>
  <a href="about.html">About</a>
  <a href="contact.html">Contact</a>
</nav>
```

![nav-styled](https://img.enkipro.com/ec9d5b4c1730d77c5dfa0dc9527c8946.png)

The `<nav>` container doesn't have any visual style without CSS. The CSS in this example may be a bit complex at this time, but hopefully it inspires you to learn more CSS!

[View CodePen](https://codepen.io/enkidevs/pen/MBeKBe)

**Note:** Not all links should be inside a `<nav>` element. The `<nav>` element is intended for major blocks of navigational links. For instance, links within the content of articles don't need to be wrapped within the `<nav>` element.

Multiple `<nav>` elements can be placed within the web page or document, when appropriate.

The `<nav>` element is also important for screen readers of visually disabled users. They use this element to determine whether the initial rendering of navigation-only content should be omitted.

---
## Practice

Select the item that would be useful placing within a `<nav>` container.

???

* Navigational links
* Link to Email
* Links within main content
* Tags in a blog post
* Image Links

---
## Revision

Can a webpage contain more than one `<nav>` container?

???

Should all links within a webpage be placed within a `<nav>` element?

???

* Yes
* No
* Yes, but it will fail validation.

---
## Quiz

### Quick question about organizing buttons in HTML?

Which container is best to organize the buttons that link the primary pages of the website?

???

* `<nav>`
* `<navigation>`
* `<header>`
* `<div>`
