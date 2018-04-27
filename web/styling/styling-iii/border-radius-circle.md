---
author: NomaDube

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip


links:

  - '[davidwalsh.name](http://davidwalsh.name/css-circles){website}'


---

# `border-radius` circle

---
## Content

Any element can be given rounded corners by applying `border-radius`:

```
element {
  border-radius: 50%;
  width: 200px;
  height: 200px; 
}
```
This can be used, for example, to make a profile picture or avatar circular.

From left to right, the `border-radius` values are `25%`, `50%`, `70%`:

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,8%20L620,8%20L620,208%20L8,208%20L8,8%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22158%22%20y=%22158%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2216%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3E%20%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22312%22%20y=%22158%22%20font-family=%22Times%20New%20Roman%22%20font-size=%2216%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3E%20%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M75,33%20L151,33%20C171.435,33%20188,49.5655%20188,70%20L188,146%20C188,166.435%20171.435,183%20151,183%20L75,183%20C54.5655,183%2038,166.435%2038,146%20L38,70%20C38,49.5655%2054.5655,33%2075,33%20%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M317,33%20C358.421,33%20392,66.5786%20392,108%20C392,149.421%20358.421,183%20317,183%20C275.579,183%20242,149.421%20242,108%20C242,66.5786%20275.579,33%20317,33%20%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M516,33%20C557.421,33%20591,66.5786%20591,108%20C591,149.421%20557.421,183%20516,183%20C474.579,183%20441,149.421%20441,108%20C441,66.5786%20474.579,33%20516,33%20%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%3C/g%3E%0A%3C/svg%3E%0A)

---
## Revision

What does the `border-radius` property do to elements? ???

* Gives the element rounded corners.
* Gives the element square corners.
* Makes a circular shadow for the element.
* Defines how far the border surrounding the element is from the actual element.

