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
  - '[CodePen: Scrolling Table CSS](https://codepen.io/enkidevs/pen/JBXyoJ){code}'
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

* `<thead>`: is used to group `<tr>` elements as the header of an HTML table.
* `<tbody>`: is used to group `<tr>` elements as the body of an HTML table.
* `<tfoot>`: is used to group `<tr>` elements as the footer of an HTML table.

There are 2 key benefits(both mentioned above) of using these elements:
  1. The table body can scroll independently of the header and footer.
  2. Tables will print with header/footer on top/bottom when spanning multiple pages

![thead-tbody-and-tfoot](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22139%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22139%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20stroke%3D%22%23000%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M16.5%2029.5h288.01563%22%2F%3E%3Cpath%20fill%3D%22%23E3E3E3%22%20d%3D%22M15%2045h288v14H15zm0%2030h288v14H15zm0%2030h288v14H15z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2223%22%3ECharacter%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2241%22%3EColegogia%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2255%22%3EDriscollcheek%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2269%22%3EHelltinez%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2284%22%3EFostershu%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2298%22%3EGrrramirez%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%22113%22%3EThocrusha%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22117%22%20y%3D%22113%22%3EGiant%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%22113%22%3EWarrior%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22117%22%20y%3D%2298%22%3ETroll%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%2298%22%3EBlacksmith%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22117%22%20y%3D%2284%22%3EDragonia%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%2284%22%3EWarrior%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22117%22%20y%3D%2269%22%3EHuman%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%2269%22%3EWarrior%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22117%22%20y%3D%2255%22%3EGnome%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%2255%22%3EBard%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22117%22%20y%3D%2241%22%3EGiant%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%2241%22%3EWarrior%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22117%22%20y%3D%2223%22%3ERace%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22214%22%20y%3D%2223%22%3EClass%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23979797%22%20stroke-linecap%3D%22square%22%20d%3D%22M15.5%20108.5h288%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M15%20109h288v14H15z%22%2F%3E%3Ctext%20fill%3D%22%23262626%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%22122%22%3EFantasy%20Game%20Characters%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/JBXyoJ)-->

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
