---
author: priyankinirmal

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - lists

  - ordered-list

  - unordered-list

  - css

  - list-style


links:

  - '[css-tricks.com](https://css-tricks.com/almanac/properties/l/list-style/){website}'


---

# Use ```list-style-type``` to change the marker type in lists

---
## Content

This property will allow you to change the marker of items in an unordered list to different shapes.
```css
ul.a {
  list-style-type: square;
}
```
Use ```list-style-image``` to change the marker to an image of your choice.
```css
ul.b {
  list-style-image: url('image.jpg');
}
```

For ordered lists, the marker can be changed to different formats of numbering.
```css
ol.c {
  list-style-type: lower-roman;
}

```
This is how the lists would look:


![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20800%20300%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,8%20L808,8%20L808,238%20L8,238%20L8,8%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22108%22%20y=%2285%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22italic%22%20%0A%20%3ESquare%20list:%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M80,110%20L91,110%20L91,121%20L80,121%20L80,110%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22108%22%20y=%22126%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EList%20item%201.%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M80,151%20L91,151%20L91,162%20L80,162%20L80,151%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22108%22%20y=%22167%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EList%20item%202.%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22553%22%20y=%2285%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22italic%22%20%0A%20%3ERoman%20list:%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22516%22%20y=%22126%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Ei%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22523%22%20y=%22126%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3E.%20%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22553%22%20y=%22126%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EList%20item%201.%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22509%22%20y=%22167%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Eii%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22523%22%20y=%22167%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3E.%20%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22#ffffff%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22553%22%20y=%22167%22%20font-family=%22Arial%22%20font-size=%2235%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3EList%20item%202.%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22miter%22%20stroke-miterlimit=%222%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3C/g%3E%0A%3C/g%3E%0A%3C/svg%3E%0A)

---
## Practice

Complete the following snippet to change the default list marker:
```
ul.specialList {
 ???:
          url('img.jpg');
}
```

* `list-style-image`
* `list-style-type`
* `list-style-font`
* `list-style`

---
## Revision

What does the following CSS code snippet do?

```css
ul.a {
   list-style-image: url("list-pic.jpg");
}

ol.b {
   list-style-type: lower-roman;
}
```
???

* Sets the unordered list marker to an image and the ordered list marker to roman numerals.
* Sets the unordered list marker to roman numerals and the ordered list to an image.
* This does nothing...
* Sets the first element of the unordered lists marker to an image and the first element of the ordered lists marker to roman numerals.
