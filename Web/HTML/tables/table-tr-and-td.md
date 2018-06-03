---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - workout
  - introduction

links:
  - '[MDN Docs for The Table element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table){website}'
  - '[MDN docs for The Table Row element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr){website}'
  - '[MDN docs for The Table Data element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td){website}'
  - '[MDN docs for Global Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'
  
---
# Table, tr, & td
---
## Content

The HTML table is used to represent information in a table made of columns and rows.

When creating a table in HTML the `<table>` element is used to create the entire table, the `<tr>` element is used to create the tables rows and the `<td>` element is used to create table data.

The `<tr>`, or **The Table Row element**'s cells can be composed of a mix of `<td>` and `<th>`(header) elements.

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
Result:
```
Matthew Denver        Colorado
Liz     San Francisco California
```

Same example with a table header(`<th>`) element:
```
<table>
  <tr> 
    <th>Name</th>
    <th>City</th>
    <th>State</th>
  </tr>
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
Result:
```
 Name        City       State
Matthew Denver        Colorado
Liz     San Francisco California
```

The `<table>` element has many deprecated attributes and for achieving a similar effects as those attributes used to provide you should use appropriate CSS properties.

**Important note!**
The `<table>`, `<tr>` and `<td>` elements still support all the global attributes.
  - `style`
  - `id`
  - `lang`
  - etc..
  - To see all the global attributes visit the link in the more info section at the bottom of this insight.

Deprecated `<table>` attributes:
  1. `align`
  2. `bgcolor`
  3. `border`
  4. `cellpadding`
  5. `cellspacing`
  6. `frame`
  7. `rules`
  8. `summary`
  9. `width`

Corresponding CSS styling and properties:  
  
1. To achieve the same effect as the `align` attribute, you should set the `margin-left` and `margin-right` CSS properties to `auto` or `0 auto`.

2. Instead of using the `bgcolor`(background color) attribute, you should use the `background-color` CSS property to achieve a similar effect.

3. To achieve the same effect as the `border` attribute, you should use the `border`, `border-color`, `border-width` and `border-style` CSS properties instead.

4. To achieve a similar effect as the `cellpadding` attribute, you should add the `border-collapse` CSS property to the `<table>` element and set its value to `collapse`, and also the `padding` CSS property to the `<td>` table element.

5. To achieve a similar effect as the `cellspacing` attribute, you should add the `border-spacing` CSS property to the `<table>` element.  **Note, the `border-spacing` property won't have any effect if the `border-collapse` property is set to `collapse`.**

6. To achieve a similar effect as the `frame` attribute, you should use the `border-style` and `border-width` CSS properties.

7. To achieve a similar effet as the `rules` attribute, you should apply the `border` CSS property to the appropriate table element/s; `<thead>`, `<tbody>` `<tfoot>`, `<col>` or `<colgroup>`.

8. You can use numerous ways to achieve a similar effect as the `summary` attribute.
  a) Add a description within the `<caption>` element.
  b) Add a description within a `<details>` element located inside a `<caption>` element.
  c) Put the table inside a `<figure>` element with a description next to it.
  d) Put the table inside a `<figure>` element and the description inside the `<figcaption>` element.
  e) Make the table in a way that it doesn't require a description.

9. To achieve the same effect as the `width` attribute, you should use the `width` CSS property.

Next, the `<td>` elements attributes (not depricated):
  1. `colspan`
  2. `headers`
  3. `rowspan`
  
1. The `colspan` attribute is used to indicate how many columns the cell extends. The default and minimum value is `1` and the maximum is 1000. If you try to put a number higher than 1000 the value will be set to 1.

2. The `headers` attribute is used to indicate a space-separated list/string which contains information about a cell. The value of the header needs to correlate with the `id` attribute of the header cell. 

3. The `rowspan` attribute is used to indicate how many rows the cell extends. The default and minimum value is `1` and the maximum value is 65534. If you add a number higher than 65534 the value is reverted back to 65534, and if you set the value as 0, the rows will extend until the end of the table section(`<thead>`, `<tbody>`,`<tfoot>`), that the cell belongs to.

**(More examples with these attributes in later insights)**

As for the deprecated `<td>` and `<tr>` elements attributes, check the more info section at the bottom of this insight.


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
