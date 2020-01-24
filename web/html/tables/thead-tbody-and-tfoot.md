---
author: Stefan-Stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - workout
  - deep

aspects:
  - introduction
  - workout
  - deep

links:
  - '[CodePen: Scrolling Table CSS](https://codepen.io/enkidevs/pen/JBXyoJ){code}'
  - '[HTML <thead> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/thead){documentation}'
  - '[HTML <tbody> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody){documentation}'
  - '[HTML <tfoot> Element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tfoot){documentation}'
  - '[Codepen Example](https://codepen.io/stefan-stojanovic/pen/jKbJgQ){code}'

---
# The `<thead>`, `<tbody>`, & `<tfoot>` Elements
---
## Content

The HTML `<thead>`, `<tbody>` and `<tfoot>` elements are used in conjunction with the `<table>` element to section the table into 3 parts.

* `<thead>`: is used to group `<tr>` elements as the header of an HTML table.
* `<tbody>`: is used to group `<tr>` elements as the body of an HTML table.
* `<tfoot>`: is used to group `<tr>` elements as the footer of an HTML table.

There are 2 key benefits(both mentioned above) of using these elements:
  1. The table body can scroll independently of the header and footer.
  2. Tables will print with header/footer on top/bottom when spanning multiple pages

![thead-tbody-and-tfoot](https://img.enkipro.com/73a52ebf6a77be4ba52dfc73d150652d.png)

[View CodePen](https://codepen.io/enkidevs/pen/JBXyoJ)

Using these elements provides useful semantic information for screen readers, printers and other accessibility purposes.

The `<thead>`, `<tbody>`, and `<tfoot>` elements have no default visual effects.


Furthermore, there are some important usage notes for these elements. These are:

  1. If your table has a `<thead>` element, the `<tbody>` element has to come after it.

  2. If your table has a `<tbody>` element, all `<tr>` elements within that table have to be a child of the `<tbody>` and cannot reside outside the `<tbody>` element.

  3. When a table is printed, the header and footer, or the `<thead>` and `<tfoot>` elements content is printed on every page, while the `<tbody>` element's content differs from page to page.

  4. If the table is too large for the window/screen it is presented on, the user agent can allow the user to scroll each table element separately, that is the `<thead>`, `<tbody>`, `<tfoot>` and the `<caption>` elements.

  5. If necessary, you can use more than one `<tbody>` element within a table. This is very useful for larger tables, where you want to divide the table into separate sections and give each section a different formatting. Also, when dividing the table with multiple `<tbody>` elements, each `<tbody>` element can have its own header row.

  **Note:** Having a header row doesn't mean having multiple `<thead>` elements, this is not allowed. What this means is each top row of the `<tbody>` element can be made a header with the appropriate combination of `<tr>` and `<th>` elements.

  For a similar and larger example with CSS and multiple `<tbody>` elements, check the `codepen example` link under the more info section at the bottom of this insight.


---
## Practice

Match the HTML elements with their descriptions:

???: used for adding a header to a table.
???: used for adding a footer to a table.
???: used for grouping table rows.

* `thead`
* `tfoot`
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
