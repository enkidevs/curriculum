---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - workout
  - deep

standards:
  web.syntax-html.1: 1000
  web.layout-html.1: 1000

links:
  - '[MDN docs for thead](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/thead){website}'
  - '[MDN docs for tbody](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody){website}'
  - '[MDN docs for tfoot](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tfoot){website}'
  - '[Codepen Example](https://codepen.io/stefan-stojanovic/pen/jKbJgQ){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Thead, tbody, & tfoot
---
## Content

The HTML `<thead>`, `<tbody>` and `<tfoot>` elements are used in conjunction with the `<table>` element to section the table into 3 parts.

The `<thead>` element is used to set a set of `<tr>` elements as the header of an HTML table.

The `<tbody>` element is used to group a set of `<tr>` elements as the body of an HTML table.

The `<tfoot>` element is used to set a set of `<tr>` elements as the footer of an HTML table.

Using these elements provides useful semantic information for screen readers, printers and other accessibility purposes.

The `<thead>`, `<tbody>`, and `<tfoot>` elements have no default visual effects. Additionally, the `<thead>`, `<tbody>` and `<tfoot>` element styling attributes are all deprecated and if you wish to add any visual effects, you should style them with the appropriate CSS properties.

**Note**
The `<thead>`, `<tbody>`, and `<tfoot>` elements still support global attributes.
If you wish to know more about global atributes, check the `more info` section at the bottom of this insight.

Some CSS properties for styling `<thead>` `<tbody>` and `<tfoot>`:
  - `text-align`
  - `background-color`
  - `vertical-align`


Furthermore, there are some important usage notes for these elements. These are:

  1. If your table has a `<thead>` element, the `<tbody>` element has to come after it.

  2. If your table has a `<tbody>` element, all `<tr>` elements within that table have to be a child of the `<tbody>` and cannot reside outside the `<tbody>` element.

  3. When a table is printed, the header and footer, or the `<thead>` and `<tfoot>` elements content is printed on every page, while the `<tbody>` element's content differs from page to page.

  4. If the table is too large for the window/screen it is presented on, the user agent can allow the user to scroll each table element separately, that is the `<thead>`, `<tbody>`, `<tfoot>` and the `<caption>` elements.

  5. If necessary, you can use more than one `<tbody>` element within a table. This is very useful for larger tables, where you want to divide the table into separate sections and give each section a different formatting. Also, when dividing the table with multiple `<tbody>` elements, each `<tbody>` element can have its own header row. **Note: Having a header row doesn't mean having multiple `<thead>` elements, this is not allowed. What this means is each top row of the `<tbody>` element can be made a header with the appropriate combination of `<tr>` and `<th>` elements.**


Example with all 3 elements:
```
<table>
  <thead>
    <tr>
      <th>Subject</th>
      <th>Class ID</th>
      <th>Avg Grade</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th colspan="3">
        Yale University
      </th>
    </tr>
    <tr>
      <td>Art</td>
      <td>11767789</td>
      <td>C-</td>
    </tr>
  </tbody>
     <tfoot>
     <tr>
      <th colspan="3">
       Provided by (some name)
      </th>
     </tr>
  </tfoot>
</table>
```
Result:
```
Subject  Class ID  Avg Grade
      Yale University
Art     11767789  C-
    Provided by (some name)
```

For a similar and larger example with CSS and multiple `<tbody>` elements, check the `codepen example` link under the more info section at the bottom of this insight.


There are 2 key benefits(both mentioned above) of using these elements:
  1. The table body can scroll independently of the header and footer.
  2. Tables will print with header/footer on top/bottom when spanning multiple pages

---
## Practice

Match the HTML elements with their descriptions:

???: used for adding a header to a table.
???: used for adding a footer to a table.
???: used for grouping table rows.

* `thead`
* `tfooter`
* `tbody`
* `title`
* `caption`
* `head`
* `footer`
* `main`

---
## Revision

The `<thead>`, `<tbody>`, and `<tfoot>` elements have no default visual effects on HTML tables, but will with CSS styles.

???

* True
* False
* Depends on the table created.

---
## Quiz

### How much do you know about HTML tables?

Which of the following is a key benefit of using `<thead>`, `<tbody>`, and `<tfoot>` elements on a table?

???

* the table body can scroll independently of the header and footer.
* alternative colors can be styled to rows/columns differently.
* best for search engines to determine the type of data.
* allows for easier nesting of table organization.
