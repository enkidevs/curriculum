---
author: Mathieu

levels:

  - basic

  - beginner

type: normal

category: pattern


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height){website}'

notes: >-
  http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/

---

# Vertically center text

---
## Content

To vertically center a single line of text within a containing block of fixed height, set the line-height of the text to be the same as the height of the containing block.

```css
.vertical-center {
  height: 35px;
  line-height: 35px;
}
```
This is a visual example of what happens:

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20810%20330%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,8%20L808,8%20L808,328%20L8,328%20L8,8%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,28%20L690,28%20L690,130%20L48,130%20L48,28%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,28%20L690,28%20L690,29%20L48,29%20L48,28%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,129%20L690,129%20L690,130%20L48,130%20L48,129%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,28%20L49,28%20L49,130%20L48,130%20L48,28%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M689,28%20L690,28%20L690,130%20L689,130%20L689,28%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2249%22%20y=%2263%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2237%22%20font-weight=%22300%22%20font-style=%22normal%22%20%0A%20%3EDefault%20line-height.%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,150%20L690,150%20L690,252%20L48,252%20L48,150%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,150%20L690,150%20L690,151%20L48,151%20L48,150%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,251%20L690,251%20L690,252%20L48,252%20L48,251%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M48,150%20L49,150%20L49,252%20L48,252%20L48,150%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M689,150%20L690,150%20L690,252%20L689,252%20L689,150%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2249%22%20y=%22211%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2237%22%20font-weight=%22300%22%20font-style=%22normal%22%20%0A%20%3EContainer's%20height%20as%20line-height.%20This%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22#000000%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#000000%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2249%22%20y=%22306%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2237%22%20font-weight=%22300%22%20font-style=%22normal%22%20%0A%20%3Eis%20a%20second%20line.%3C/text%3E%0A%3C/g%3E%0A%0A%3C/g%3E%0A%3C/svg%3E%0A)

The first line is centered, but the second one will be displayed `35px` below, because of the property we just set.

---
## Practice

In the following example, what is the distance between the first and the second line, if the text spreads on two lines?
```css
.vertical-center-text{
  height: 50px;
  line-height: 50px;
```
???


* `50px`
* `25px`
* `5px`

---
## Revision

Which of the following CSS code snippets will vertically centre a line of text?
```css
/* Option a */
.vertical-center {
   centre: true;
   height: 20px;

/* Option b */
.vertical-center {
   height: 28px;
   line-height: 28px;

/* Option c */
.vertical-center {
   height: 12px;
   line-height: 100%;
   centre:true
}

```
???

* b
* a
* c

