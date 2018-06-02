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
  - deep

links:
  - '[MDN docs for th](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th){website}'
  
---
# Intro th
---
## Content

The HTML `<th>` element is used to specify a header cell for a group of table cells within a table. The `<th>` element has to nested within a `<tr>` element.

Example:
```
<table>
  <tr>
    <th>First name</th>
    <th>Last name</th>
  </tr>
  <tr>
    <td>Matthew</td>
    <td>Leach</td>
  </tr>
  <tr>
    <td>Liz</td>
    <td>Howard</td>
  </tr>
</table>
```
Result:
```
First name Last name
Matthew    Leach
Liz        Howard
```

The `<th>` elements attributes:
  1/ `abbr`
  2. `colspan`
  3. `headers`
  4. `rowspan`
  5. `scope`

Also, there are a few more deprecated attributes, to see them and their definitions/explanations check the `MDN docs for th` in the more info section at the bottom of this insight.
  
As for the attributes that are not deprecated and are still in use:

1. The `abbr` attribute is used to add an abbreviated description for the content of a cell and speech readers may present this description rather than the content of the cell.

2. The `colspan` attribute is used to indicate how many columns the cell extends. The default and minimum value is `1` and the maximum is 1000. If you try to put a number higher than 1000 the value will be set to 1.

3. The `headers` attribute is used to indicate a space-separated list/string which contains information about a cell. The value of the header needs to correlate with the `id` attribute of the header cell. 

4. The `rowspan` attribute is used to indicate how many rows the cell extends. The default and minimum value is `1` and the maximum value is 65534. If you add a number higher than 65534 the value is reverted back to 65534, and if you set the value as 0, the rows will extend until the end of the table section(`<thead>`, `<tbody>`,`<tfoot>`), that the cell belongs to.

5. The `scope` attribute is used to define the cells that the header(`<th>`) element relates to.
Possible values are:
  a) `auto`
  b) `col `
  c) `colgroup`
  d) `row`
  e) `rowgroup`
  
b) Setting the `col` value relates the header to all the cells of the column it belongs to.
c) `colgroup` value says the header belongs to a `colgroup` and relates to all of its cells.
d) Setting the `row` value relates the header to all the cells of the row it belongs to.
e) `rowgroup` value says the header belongs to a `rowgroup` and relates to all of its cells.


Also, the `<th>` element has a default CSS styling:
  - font-weight: bold;
  - text-align: center;
  
  
Example with colspan:
```
<table>
  <tr>
    <th colspan="2">Married</th>
  </tr>
  <tr>
    <td>Matt</td>
    <td>Mary</td>
  </tr>
</table>
```
Result:
```
  Married
Matt Mary
```

Example with rowspan:
```
<table>
  <tr>
    <td> Mary</th>
    <th rowspan="2">Married</th>
  </tr>
  <tr>
    <td>Matt</td>
  </tr>
</table>
```
Result:
```
Mary
     Married
Matt
```
---
## Practice

Arrange the HTML tags to properly create this table:

```
<tag1>
  <tag2>
    <tag3>First name</tag3>
    <tag3>Last name</tag3>
  </tag2>
  <tag2>
    <tag4>Matthew</tag4>
    <tag4>Leach</tag4>
  </tag2>
  <tag2>
    <tag4>Liz</tag4>
    <tag4>Howard</tag4>
  </tag2>
</tag1>
```

tag1 = ???
tag2 = ???
tag3 = ???
tag4 = ???

* table
* tr
* th
* td
* tc
* row
* col
* colspan
* rowspan

---
## Revision

Which HTML element creates the header of a group of table cells within a table?

???

* th
* table
* tr
* td
* colhead
* rowhead

---
## Quiz

### How much do you know about HTML tables?

Which CSS property(s) style a `<th>` element of a table by default?

???

* font-weight: bold; && text-align: center;
* text-align: left; && font-weight: normal; 
* font-style: oblique; && font-style: italic;
* font-style: italic; && text-align: center;
