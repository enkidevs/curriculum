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
  - '[CodePen: Nav Element](https://codepen.io/enkidevs/pen/MBeKBe){code}'
  - '[MDN docs for nav](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav){website}'
  - '[W3S docs for nav](https://www.w3schools.com/tags/tag_nav.asp){website}'

---
# Nav element

---
## Content

The HTML `<nav>` element is used to group the navigation of the page, such as primary website navigational links, table of contents, previous/next buttons, or breadcrumbs.

Example:
```
<nav>
  <a href="index.html">Home</a>
  <a href="about.html">About</a>
  <a href="contact.html">Contact</a>
</nav>
```

![nav-styled](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%22320%22%20height%3D%22174%22%3E%3Cdefs%3E%3Cfilter%20id%3D%22b%22%20width%3D%22288.9%25%22%20height%3D%22168%25%22%20x%3D%22-94.4%25%22%20y%3D%22-34%25%22%20filterUnits%3D%22objectBoundingBox%22%3E%3CfeOffset%20in%3D%22SourceAlpha%22%20result%3D%22shadowOffsetOuter1%22%2F%3E%3CfeGaussianBlur%20in%3D%22shadowOffsetOuter1%22%20result%3D%22shadowBlurOuter1%22%20stdDeviation%3D%222.5%22%2F%3E%3CfeColorMatrix%20in%3D%22shadowBlurOuter1%22%20result%3D%22shadowMatrixOuter1%22%20values%3D%220%200%200%200%201%200%200%200%200%201%200%200%200%200%201%200%200%200%200.5%200%22%2F%3E%3CfeMerge%3E%3CfeMergeNode%20in%3D%22shadowMatrixOuter1%22%2F%3E%3CfeMergeNode%20in%3D%22SourceGraphic%22%2F%3E%3C%2FfeMerge%3E%3C%2Ffilter%3E%3Cpath%20id%3D%22a%22%20d%3D%22M182%2015h124v28H182V15z%22%2F%3E%3Cmask%20id%3D%22c%22%20width%3D%22124%22%20height%3D%2228%22%20x%3D%220%22%20y%3D%220%22%20fill%3D%22%23fff%22%3E%3Cuse%20xlink%3Ahref%3D%22%23a%22%2F%3E%3C%2Fmask%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M311%20174H9c-4.97056%200-9-4.02944-9-9V55h320v110c0%204.97056-4.02944%209-9%209z%22%2F%3E%3Cpath%20fill%3D%22%233E94EC%22%20d%3D%22M320%2055H0V9c0-4.97056%204.02944-9%209-9h302c4.97056%200%209%204.02944%209%209v46z%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22124%22%20y%3D%22160%22%3ECopyright%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22DINCondensed-Bold%2C%20DIN%20Condensed%22%20font-size%3D%2228%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2227%22%20y%3D%2238%22%3ELOGO%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22DINCondensed-Bold%2C%20DIN%20Condensed%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22191%22%20y%3D%2235%22%3EHome%20About%20Contact%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2216%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22240%22%20y%3D%2287%22%3ENav%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M245.84342%2050.25509l7.87423%2019.4894%22%2F%3E%3Cg%20stroke%3D%22%23000%22%20filter%3D%22url%28%23b%29%22%20transform%3D%22rotate%28-22%20245.439%20-593.925%29%22%3E%3Cpath%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M4.5%203.5v21.02%22%2F%3E%3Cpath%20fill%3D%22%23000%22%20d%3D%22M4.5%200L9%207H0z%22%2F%3E%3C%2Fg%3E%3Cuse%20stroke%3D%22%23000%22%20stroke-dasharray%3D%223%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20mask%3D%22url%28%23c%29%22%20xlink%3Ahref%3D%22%23a%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The `<nav>` container doesn't have any visual style without CSS. The CSS in this example may be a bit complex at this time, but hopefully it inspires you to learn more CSS! 

<!--[View CodePen](https://codepen.io/enkidevs/pen/MBeKBe)-->

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
