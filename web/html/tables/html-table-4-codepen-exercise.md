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
    [MDN docs for
    th](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th){website}
  - >-
    [MDN docs for The Table Row
    element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr){website}
  - >-
    [MDN docs for The Table Data
    element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td){website}

webSetupCode:
  startingHtml: |
    <!-- Create a table with 2 columns and 5 rows -->
    <!-- Top and bottom rows should be inside thead and tfoot -->
    <!-- Both top and bottom rows must span across 2 columns -->
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

    thead > tr > th {
      background-color: #A5D6A7;
      font-size: 18px;
      border-bottom: 2px solid #999;
    }

    tbody > tr > th {
      background-color: #A5D6A7;
      border-bottom: 1.5px solid #bbb;
    }

    tfoot > tr > th {
      background-color: #A5D6A7;
      font-size: 18px;
      border-bottom: 2px solid #999;
    }
  startingJs: |
    // No JavaScript needed

---

# HTML table exercise 4

---

## Content

In this exercise, you will create a table with **2 columns and 5 rows**.  

- The top row should be inside a `<thead>` and the bottom row should be inside a `<tfoot>`.  
- Both rows must **span 2 columns** using the `colspan` attribute[1].  

In the end, it should look like this:  
![table-exercise-4-finished](https://img.enkipro.com/2d22bdfd1d5c85e8bc23a48db00ef859.png)

---

## Footnotes

- Use `<thead>`, `<tbody>`, and `<tfoot>` to structure your table.  
- Apply `colspan="2"` to the `<th>` elements in `<thead>` and `<tfoot>` so they span both columns.  

---
