---
author: Mathieu

levels:

  - basic

  - beginner

type: normal

category: how to


links:

  - '[davidwalsh.name](http://davidwalsh.name/css-vertical-center){website}'

notes: >-
  http://www.instantshift.com/2010/03/15/47-css-tips-tricks-to-take-your-site-to-the-next-level/

---

# Vertical centering with `margin-top`

---
## Content

To vertically center block elements of known height:


```css
.vertical-center {
  position: absolute;
  top: 50%;
  height: 400px;
  margin-top: -200px;
}
```
You can check out the evolution here:

![HtmlToSvg.svg](%3C?xml%20version=%221.0%22%20encoding=%22UTF-8%22%20standalone=%22no%22?%3E%0A%3Csvg%20width=%22100%25%22%20height=%22auto%22%20viewBox=%220%200%20810%20310%22%0A%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20%20version=%221.2%22%20baseProfile=%22tiny%22%3E%0A%3Cdesc%3ECreated%20by%20HiQPdf%3C/desc%3E%0A%3Cdefs%3E%0A%3C/defs%3E%0A%3Cg%20fill=%22none%22%20stroke=%22black%22%20stroke-width=%221%22%20fill-rule=%22evenodd%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,8%20L808,8%20L808,308%20L8,308%20L8,8%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M8,158%20L808,158%20L808,159%20L8,159%20L8,158%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M408,8%20L409,8%20L409,308%20L408,308%20L408,8%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M78,158%20L398,158%20L398,298%20L78,298%20L78,158%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%2278%22%20y=%22239%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2232%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Etop:50%25;%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#ffffff%22%20fill-opacity=%221%22%20stroke=%22none%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Cpath%20vector-effect=%22none%22%20fill-rule=%22evenodd%22%20d=%22M418,88%20L738,88%20L738,228%20L418,228%20L418,88%22/%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22418%22%20y=%22150%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2232%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Etop:50%25;%3C/text%3E%0A%3C/g%3E%0A%0A%3Cg%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22#596193%22%20stroke-opacity=%221%22%20stroke-width=%221%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22bevel%22%20transform=%22matrix%281,0,0,1,0,0%29%22%0A%3E%0A%3Ctext%20fill=%22#596193%22%20fill-opacity=%221%22%20stroke=%22none%22%20xml:space=%22preserve%22%20x=%22418%22%20y=%22187%22%20font-family=%22'Roboto',sans-serif%22%20font-size=%2232%22%20font-weight=%22400%22%20font-style=%22normal%22%20%0A%20%3Emargin-top:%20-height/2;%3C/text%3E%0A%3C/g%3E%0A%3C/g%3E%0A%3C/svg%3E%0A)

`top: 50%` will put the top of the element in the center of its parent. `margin-top: -200px` will make the content of the element start 200px before its top. By combining both, we manage to center an element of known height.

---
## Revision

What does the following CSS code snippet do? ???

```css
#class {
   position: absolute;
   top: 50%;
   height: 400px;
   margin-top: -200px;
}
```

* Vertically centres a block element with a known height.
* Vertically centres a block element with unknown height.
* Horizontally centres a block element with a known height.
* Horizontally centres a block element with unknown height.

