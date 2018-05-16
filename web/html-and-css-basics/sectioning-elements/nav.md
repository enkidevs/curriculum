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
  - '[MDN docs for nav](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav){website}'
  - '[W3S docs for nav](https://www.w3schools.com/tags/tag_nav.asp){website}'

---
# Nav element

---
## Content

The HTML `<nav>` element is used to represent a section of the page. The purpose of this section is to provide navigational links, table of contents, previous/next buttons or breadcrumbs.

Example:
```
<nav>
  <a href="/page1/">Page1</a> |
  <a href="/page2/">Page2</a> |
  <a href="/page3/">Page3</a> |
  <a href="/page4/">Page4</a> |
  <a href="/page10/">Page10</a>
</nav>
```

**Note: Not all links should be inside a `<nav>` element. The `<nav>` element is indented for major blocks of navigational links. For instance, the footer element can contain links that don't go in the `<nav>` element.**

You can also have multiple `<nav>` elements in your web page or document. One for the website navigation and one for page navigation.

The `<nav>` element is also used with screen readers who target disabled users. They use this element to determine whether the initial rendering of navigation only content should be omitted.

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
 * No
 * Yes
 * No, but it will fail validation.


---
## Quiz

### Quick question about organizing buttons in HTML?

Which container is best to organize the buttons that link the primary pages of the website?

???

 * `<nav>`
 * `<navigation>`
 * `<header>`
 * `<navigate>`
 * `<navi>`
 * `<menu>`
 * `<buttons>`
