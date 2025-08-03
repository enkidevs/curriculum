---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for
    caption](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/caption){website}
  - >-
    [MDN Docs for The Table
    element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table){website}
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
    1. Create a table with 2 rows and 2 columns.
    2. Add a caption above the table with the text "Family members".
    -->

    <div class="your-code">
      <!-- Write your HTML table here -->
    </div>
  startingCss: |
    table {
      border: 4px solid #100;
      border-top: none;
      border-collapse: collapse;
      font: 16px "Lucida Grande", "Helvetica", "Arial", sans-serif;
    }

    caption {
      border: 4px solid #100;
      border-bottom: 1.8px solid #100;
      background-color: #81C784;
    }

    td {
      border: 1px solid #500;
      padding: 4px 12px 0;
      text-align: center;
    }

    tr {
      background-color: #C8E6C9;
      font-size: 18px;
      border-bottom: 1.5px solid #bbb;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML table exercise 2

---

## Content

In this exercise, you will create a **2x2 table** and add a `<caption>` element.  

- The table should have **2 rows** and **2 columns**.  
- Add a caption at the top with the text:  
```plain-text
  Family members
```
In the end, it should look like this:  
![html-table-exercise-2-finished](https://img.enkipro.com/7685c0f2a68e7435c1447bf487ca18a1.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<table>` as the main wrapper.
- The `<caption>` tag goes right after the opening `<table>` tag.
- Create each row with `<tr>` and each cell with `<td>`:

```html
<table>
  <caption>Family members</caption>
  <tr><td>Row 1, Col 1</td><td>Row 1, Col 2</td></tr>
  <tr><td>Row 2, Col 1</td><td>Row 2, Col 2</td></tr>
</table>
```