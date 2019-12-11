---
author: oj14henry

levels:

  - basic

  - advanced

  - medium

type: normal

aspects:
  - introduction
  - workout

category: tip

tags:

  - cellpadding

  - cellspacing


links:

  - '[Difference between Cellpadding & Cellspacing](http://www.htmlcodetutorial.com/tables/index_famsupp_29.html){website}'


---

# Controlling cellpadding and cellspacing in CSS

---
## Content

Cellpadding refers to the space between the cell content and the cell wall, while, cellspacing refers to the space between table cells.

To control the "cellpadding" in CSS, apply `padding` on table cells, for example:

```css
td {
  padding: 10px;
}
```

To control the "cellspacing" in CSS, apply `border-spacing` and `border-collapse` to the table, for example:

```css
table {
  border-spacing: 10px;
  border-collapse: separate;
}
```
This is how the table would look with all the above mentioned properties:

![HtmlToSvg.svg](https://img.enkipro.com/5cd4ebde7bebedb1168c64d4f3d8ee61.png)

---
## Practice

Apply a cellpadding of 15px to a table:
```css
??? {
   ??? : 15px;
}
```

* `td`
* `padding`
* `table`
* `cell-padding`
* `tr`

---
## Revision

What does the following CSS code snippet do?
```css
table {
   padding: 8px;
   border-spacing: 6px;
   border-collapse: separate;
}
```
???

* Controls the cellpadding and cellspacing of the table.
* Alters the table.
* Adds a border to the table without padding.
* Adds a border to the table with padding.
