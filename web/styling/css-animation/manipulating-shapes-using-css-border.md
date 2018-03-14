---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

tags:

  - border

  - shapes


links:

  - '[css-tricks.com](https://css-tricks.com/working-with-shapes-in-web-design/){website}'


---

# Manipulating shapes using CSS: `border`

---
## Content

You can make shapes by defining the properties of the `border`, as seen below:

```css
#triangle {
  width: 0;
  height: 0;
  border-left: 80px solid white;
  border-right: 80px solid transparent;
  border-top: 80px solid transparent;
  border-bottom: 80px solid transparent;
}
```

By setting the `background` of three `borders` to be `transparent`, the shape of a triangle is mimicked.

For the following image, these are the borders that are not transparent:
- **A** : *border-left* (code snippet above)
- **B** : *border-right*
- **C** : *border-top*
- **D** : *border-bottom*

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,8%20L808,8%20L808,308%20L8,308%20L8,8%22/%3E%0A%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M98,28%20L98,288%20L228,158%20L98,28%22/%3E%0A%3Ctext%20x=%22130%22%20y=%22175%22%20fill=%22#000000%22%20font-size=%2250%22%20font-family=%22'Roboto',sans-serif%22%3EA%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M228,158%20L358,288%20L358,28%20L228,158%22/%3E%0A%3Ctext%20x=%22290%22%20y=%22175%22%20fill=%22#000000%22%20%20font-size=%2250%22%20font-family=%22'Roboto',sans-serif%22%3EB%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M578,158%20L448,288%20L708,288%20L578,158%22/%3E%0A%3Ctext%20x=%22560%22%20y=%22250%22%20%20fill=%22#000000%22%20font-size=%2250%22%20font-family=%22'Roboto',sans-serif%22%3ED%3C/text%3E%0A%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M448,28%20L578,158%20L708,28%20L448,28%22/%3E%0A%3Ctext%20x=%22560%22%20y=%22100%22%20%20fill=%22#000000%22%20font-size=%2250%22%20font-family=%22'Roboto',sans-serif%22%3EC%3C/text%3E%0A%3C/g%3E%0A%0A%3C/g%3E%0A%3C/svg%3E%0A)

---
## Revision

What shape would the following CSS produce? ???

```css
#shape {
   width: 0;
   height: 0;
   border-left: 80px solid transparent;
   border-right: 80px solid transparent;
   border-top: 80px solid red;
   border-bottom: 80px solid transparent;
}
```


* A triangle.
* A square.
* A circle.
* A rectangle.

