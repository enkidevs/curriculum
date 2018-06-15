---
author: Mathieu

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/::first-letter){documentation}'

notes: >-
  http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/

---

# Drop caps with `::first-letter`

---
## Content

Using the `::first-line` and `::first-letter` pseudo elements that have been  introduced in CSS1, a nice typographic effect like a drop cap can be achieved.

```css
p::first-letter {
    font-size: 20px;
}
```
This will only work if the  first letter is not preceded by another pseudo-element  such as `::before`.

If there are multiple targeted elements in a row, each first letter will be affected. In order to avoid this `::first-child` or `::first-of-type` pseudo-elements can be used:
```css
p::first-child::first-letter {
    font-size: 20px;
}
```
The first line of a text can also be enhanced:
```css
p::first-line {
  font-size: 15px;
}
```
An usage example of the pseudo-elements:

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20612%20200%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,8%20L620,8%20L620,208%20L8,208%20L8,8%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2218%22%20y=%2255%22%20font-family=%22Arial%22%20font-size=%2250%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3ET%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2249%22%20y=%2255%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Ehis%20targets%20the%20first%20letter.%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2218%22%20y=%22133%22%20font-family=%22Arial%22%20font-size=%2240%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3ET%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2248%22%20y=%22133%22%20font-family=%22Arial%22%20font-size=%2240%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Ehis%20targets%20the%20first%20line.%20Second%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2220%22%20y=%22171%22%20font-family=%22Arial%22%20font-size=%2230%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Eline,%20same%20paragraph.%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%3C/g%3E%0A%3C/svg%3E%0A)

---
## Practice

Change the size of the first letter of a paragraph to `50px` :
```css
p.special ??? {
  ??? : 50px;
}
```

* `::first-letter` 
* `font-size` 
* `::first-child:first-line` 
* `size` 
* `font-height`

---
## Revision

The `::first-letter` pseudo-element won't have the expected result if the targeted element 

???.


* has a `::before` pseudo-element set
* has an `::after` pseudo-element set
* is not a paragraph

