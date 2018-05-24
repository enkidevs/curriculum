---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats


links:

  - '[www.impressivewebs.com](http://www.impressivewebs.com/vertical-percentages-css/){website}'
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/percentage){documentation}'
notes: 'http://www.sitepoint.com/12-little-known-css-facts/'

---

# Vertical percentages are relative to container width, not height

---
## Content

Width percentage is intuitively calculated based on the width of the container. 

However, percentages on properties like `padding-top` and `margin-top` are also calculated based on the *width* of the container, rather than the height.

```
div {
  height: 100px;
  width:  400px;
  padding-left: 10%; /* = 40px */ 
  padding-top: 50%;  /* = 200px */
}
```
Another example:


![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20310%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M0,0%20L800,0%20L800,310%20L0,310%20L0,0%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M118,18%20L698,18%20L698,298%20L118,298%20L118,18%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22198%22%20y=%22124%22%20font-family=%22Roboto,%20sans-serif%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EContainer%20is%20800%20%C3%97%20300px%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22198%22%20y=%22157%22%20font-family=%22Roboto,%20sans-serif%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EPadding-top:%2010%25%20%2880px%29%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22198%22%20y=%22190%22%20font-family=%22Roboto,%20sans-serif%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EPadding-left:%2010%25%20%2880px%29%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%3C/g%3E%0A%3C/svg%3E%0A)

---
## Practice

What is the `margin-top` value in pixels?
```css
div {
   width: 300px;
   height: 100px;
   margin-top: 10%; 
   /* margin-top: ??? px */
```

* `30`
* `10`
* `100`
* `40`

---
## Revision

Percentages on properties such as *padding-top* and *margin-top* are calculated based on the 

???

* width of the container.
* height of the container.
* perimeter of the container.
* area of the container.

