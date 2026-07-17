---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for caption](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption){website}
  - >-
    [MDN docs for thead](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/thead){website}
  - >-
    [MDN docs for tbody](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tbody){website}
  - >-
    [MDN docs for tfoot](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tfoot){website}
  - >-
    [MDN docs for table](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table){website}
  - >-
    [MDN docs for th](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th){website}
  - >-
    [MDN docs for tr](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/tr){website}
  - >-
    [MDN docs for td](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/td){website}

webSetupCode:
  startingHtml: |
    <!-- Create your table here -->
  startingCss: |
    caption {
      border: 4px solid #100;
      border-bottom: 1.8px solid #100;
      background-color: #9c27b0;
    }
    table {
      border: 4px solid #100;
      border-collapse: collapse;
      border-top: none;
      font: 16px "Lucida Grande", "Helvetica", "Arial", sans-serif;
    }

    th, td {
      border: 1px solid #500;
      padding: 4px 12px 0;
      text-align: center;
    }

    thead > tr > th {
      background-color: #BA68C8;
      font-size: 18px;
      border-bottom: 2px solid #999;
    }

    tbody > tr > th {
      background-color: #C8E6C9;
      border-bottom: 1.5px solid #bbb;
    }
    tfoot > tr > th {
      background-color: #BA68C8;
      font-size: 18px;
      border-bottom: 2px solid #999;
    }
  startingJs: |
    // No JavaScript needed for this exercise

---

# HTML table exercise 3

---

## Content

In this exercise, you need to **create a table with 5 columns and 5 rows**.  

- The top and bottom rows should be the **header** and **footer**.  
- Separate the table into 3 sections: `<thead>`, `<tbody>`, and `<tfoot>`.  
- Add a `<caption>` at the top of the table that says:  
```plain-text
  Calculations
```

In the end, it should look like this:  
![html-table-exercise-3-finished](https://img.enkipro.com/aa8045581a49ae09248696a7d5645742.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Wrap your entire table in a `<table>` tag.  
- Use `<thead>`, `<tbody>`, and `<tfoot>` to separate sections.  
- Use `<tr>` for rows, `<th>` for headers/footers, and `<td>` for table data cells.  
- The `<caption>` tag goes right after `<table>` to title the table.
