---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - workout
  - introduction

standards:
  web.syntax-html.1: 1000
  web.layout-html.1: 1000

links:
  - '[CodePen: Table without Style](https://codepen.io/enkidevs/pen/JBXWLL){code}'
  - '[CodePen: Table with Style](https://codepen.io/enkidevs/pen/JBXWbr){code}'
  - '[MDN Docs for The Table element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table){website}'
  - '[MDN docs for The Table Row element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr){website}'
  - '[MDN docs for The Table Data element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td){website}'
  - '[MDN docs for Global Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Table, tr, and td
---
## Content

The HTML table is used to represent information in a table made of columns and rows.

When creating a table in HTML the `<table>` element is used to create the entire table, the `<tr>`(Table Row) element is used to create the tables rows and the `<td>` (Table Data) element is used to create table data.

Example of a simple table:
```
<table>
  <tr>
    <td>Matthew</td>
    <td>Denver</td>
    <td>Colorado</td>
  </tr>
  <tr>
    <td>Liz</td>
    <td>San Francisco</td>
    <td>California</td>
  </tr>
</table>
```

![simple-table](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2278%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2278%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2233%22%3EMatthew%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2255%22%3ELiz%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2283%22%20y%3D%2255%22%3ESan%20Francisco%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22178%22%20y%3D%2255%22%3ECalifornia%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22178%22%20y%3D%2233%22%3EColorado%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2283%22%20y%3D%2233%22%3EDenver%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/JBXWLL)-->

Tables themselves in HTML without CSS can appear a little messy and confusing compared to those that are styled more appropriately. 

![simple-table-with-style](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22111%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22111%22%20fill%3D%22%23DCDDDF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M19%2022h280v65H19z%22%2F%3E%3Ctext%20fill%3D%22%237E7F94%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2230%22%20y%3D%2241%22%3EMatthew%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%237E7F94%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2230%22%20y%3D%2274%22%3ELiz%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%237E7F94%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22107%22%20y%3D%2274%22%3ESan%20Francisco%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%237E7F94%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22207.5%22%20y%3D%2274.5%22%3ECalifornia%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%237E7F94%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22207.5%22%20y%3D%2241.5%22%3EColorado%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23C8CAD7%22%20stroke-linecap%3D%22square%22%20d%3D%22M194%2023v63.05%22%2F%3E%3Ctext%20fill%3D%22%237E7F94%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22107%22%20y%3D%2241%22%3EDenver%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23C8CAD7%22%20stroke-linecap%3D%22square%22%20d%3D%22M93.5%2022.5v63.05m205%201.45h-279M299%2054H20%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/JBXWbr)-->

Styling tables can take a little practice, as seen in the example above, and often use more specific selectors. Such as, in order to prevent the last column or bottom row from having styles that may look strange, properties on these rows (or cells) can be reset using the psudo class `:last-child` like this. 


```
tr:last-child {
  border-bottom: none;
}
```

---
## Practice

Arrange the HTML tags to properly create this table:

```
<tag1>
  <tag2>
    <tag3>Matthew</tag3>
    <tag3>Denver</tag3>
    <tag3>Colorado</tag3>
  </tag2>
  <tag2>
    <tag3>Liz</tag3>
    <tag3>San Francisco</tag3>
    <tag3>California</tag3>
  </tag2>
</tag1>
```

tag1 = ???
tag2 = ???
tag3 = ???

* table
* tr
* td
* tc
* th
* row
* col
* colspan
* rowspan

---
## Revision

Match the HTML element with its description:

??? = defines the entire table
??? = defines the table row
??? = defines the table data

* `<table>`
* `<tr>`
* `<td>`
* `<et>`
* `<row>`
* `<col>`

---
## Quiz

### How much do you know about HTML tables?

What is the output of this table?
Choose the appropriate option; A,B,C or D:

```
<table>
  <tr>
    <td>Pencil</td>
    <td>1.99</td>
    <td>295</td>
  </tr>
  <tr>
    <td>Pen</td>
    <td>2.49</td>
    <td>423</td>
  </tr>
</table>
```
A
```
Pencil 1.99 295
Pen    2.49 423
```
B
```
Pen    2.49 423
Pencil 1.99 295
```
C
```
Pencil 1.99295
Pen    2.49423
```
D
```
Pencil 2.99 495 Pen 1.49 223
```

???

* Option A
* Option B
* Option C
* Option D
