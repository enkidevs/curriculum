---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN Docs for The Table
    element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table){website}
  - >-
    [MDN docs for The Table header
    element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th){website}
  - >-
    [MDN docs for The Table Row
    element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr){website}
  - >-
    [MDN docs for The Table Data
    element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a table with 5 rows and 2 columns.
    2. The first row should be a table header (<thead> with <th> elements).
    3. The last row should be a table footer (<tfoot> with <th> or <td> elements).
    4. The 3 rows in between should be regular table body rows (<tbody> with <td>).
    -->

    <div class="your-code">
      <!-- Write your HTML table here -->
    </div>
  startingCss: |
    table {
      border: 4px solid #100;
      border-collapse: collapse;
      font: 16px "Lucida Grande", "Helvetica", "Arial", sans-serif;
    }

    th, td {
      border: 1px solid #500;
      padding: 4px 12px 0;
      text-align: center;
    }

    tr > th {
      background-color: #ffa;
      font-size: 18px;
      border-bottom: 1.5px solid #bbb;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML table exercise 1

---

## Content

In this exercise, you will create a **simple table** using semantic tags like `<thead>`, `<tbody>`, and `<tfoot>`.  

- The table must have **2 columns** and **5 rows total**.  
- The **first row** should be the table header.  
- The **last row** should be the table footer.  
- The **middle 3 rows** should be part of the body.  

In the end, it should look like this:  
![html-table-exercise-1-finished](https://img.enkipro.com/1ecd4e1dcc1e35f0195c55ac1e0ba406.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<table>` as the main wrapper.
- Inside the table, structure rows with:
  - `<thead>` for headers
  - `<tbody>` for main content
  - `<tfoot>` for footer
- Each row uses `<tr>`, and each cell inside it uses `<th>` or `<td>`.

Example:

```html
<table>
  <thead>
    <tr><th>Header1</th><th>Header2</th></tr>
  </thead>
  <tbody>
    <tr><td>Data1</td><td>Data2</td></tr>
    ...
  </tbody>
  <tfoot>
    <tr><td colspan="2">Footer</td></tr>
  </tfoot>
</table>
```