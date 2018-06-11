---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.syntax-html.1: 1000
  web.layout-html.1: 1000

tags:
  - workout
  - deep

---
# Colgroup & col
---
## Content

The HTML self-closing `<col>` element is used to define a column and the `<colgroup>` element is used to define a group of columns for an HTML table.

The `<col>` element provides common semantics and is usually located within the `<colgroup>` element.

The `<col>` element has one element-specific attribute; `span`. All other element specific attributes are obsolete since HTML5.

The `span` attribute is used to specify how many columns does the `<col>` element extend. If the attribute is not provided, the default value is `1`.

This element can also be used to define unique styles within columns.

You can edit the `<col>` element by using the appropriate CSS properties, for instance:
  - `width`
  - `text-align`

As for the `<colgroup>` element, just like with the `<col>` element, all element-specific attributes except the `span` attribute are obsolete. Additionally, you shouldn't use the `span` attribute on the `<colgroup>` element if there are one or more `<col>` elements present within the `<colgroup>` element.

The `<colgroup>` element is useful for applying styles to entire columns, rather than repeating styles for each cell in every row.

**Note**  
Both `<col>` and `<colgroup>` elements support global attributes. If you wish to know more about global attributes, visit the more info section at the bottom of this insights.

Example with both elements:
```
<table>
 <colgroup>
  <col span="2"
    style="background-color:lightblue">
  <col
    style="background-color:hotpink">
  <col span="3"
    style="background-color:mediumpurple">
 </colgroup>
  <tr>
    <td>col 1</td>
    <td>col 2</td>
    <td>col 3</td>
    <td>col 4</td>
    <td>col 5</td>
    <td>col 6</td>
  </tr>
</table>
```

In the example above, the `<colgroup>` element is used to create a group of 3 `<col>` elements and the `<tr>` element is used to create a single row with 6 `<td>` elements. Each col element spans differently and has a different style; first `<col>` spans 2 columns and is `lightblue`, 2nd `<col>` spans 1 column and is `hotpink` and the third and last `<col>` spans 3 columns and is `mediumpurple`.  

---
## Practice

Write the code to create the following table:

```
<table>
 <tag1>
  <tag2 span="2"
   style="background-color:lightblue">
  <tag2
   style="background-color:hotpink">
  <tag2 span="3"
   style="background-color:mediumpurple">
  </tag1>
  <tr>
   <td>col 1</td>
   <td>col 2</td>
   <td>col 3</td>
   <td>col 4</td>
   <td>col 5</td>
   <td>col 6</td>
  </tr>
</table>
```

tag1 = ???
tag2 = ???

When using the `<colgroup>` element, which statements is not true?

???

* `colgroup`
* `col`
* must be placed before any `<caption>` elements
* `colstyle`
* `colspan`
* `column`
* must be used as a child of a `<table>` element.
* must be placed after any `<caption>` elements
* must be placed before any `<thead>`, `<tbody>`, `<tfoot>`, & `<tr>` elements.

---
## Revision

Which HTML element is useful for applying styles to entire columns, rather than in repeating styles for each cell in every row?

???

* `<colgroup>`
* `<rowgroup>`
* `<col>`
* `<colstyle>`
* `<colspan>`

---
## Quiz

### How much do you know about tables in HTML?

What self-closing element can be used within `<colgroup>` to define unique styles within columns of an HTML table?

???

* `<col>`
* `<column>`
* `<style>`
* `<colspan>`
* `<template>`
* `<colstyle>`
