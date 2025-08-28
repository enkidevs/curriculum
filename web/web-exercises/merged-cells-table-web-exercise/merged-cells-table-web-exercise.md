---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <table>
        <thead>
          <tr>
            <th rowspan="2">Product</th>
            <th colspan="2">Pricing</th>
            <th rowspan="2">Stock</th>
          </tr>
          <tr>
            <th>Retail</th>
            <th>Wholesale</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Laptop</td>
            <td>$1200</td>
            <td>$1000</td>
            <td>In Stock</td>
          </tr>
          <tr>
            <td>Headphones</td>
            <td>$150</td>
            <td>$120</td>
            <td>Out of Stock</td>
          </tr>
          <tr>
            <td>Monitor</td>
            <td>$300</td>
            <td>$250</td>
            <td>In Stock</td>
          </tr>
        </tbody>
      </table>
    </div>
  startingCss: |
    /* 
    Task:
    1. Make the table responsive (width: 100%).
    2. Use border-collapse for cleaner styling.
    3. Style headers differently from cells.
    4. Use rowspan and colspan properly.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Advanced Table Layouts with Colspan & Rowspan

---

## Content

In this exercise, you will:
- Learn how to merge table cells using `colspan` and `rowspan`.
- Style a table with multiple header rows.
- Make the table responsive and cleanly styled.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Responsive table:

```css
table {
  width: 100%;
  border-collapse: collapse;
}
```

- Styling headers vs data cells:

```css
th {
  background-color: #222;
  color: white;
  padding: 12px;
  text-align: center;
}

td {
  padding: 10px;
  text-align: center;
  border: 1px solid #ccc;
}
```

- Hover effect for better readability:
```css
tbody tr:hover {
  background-color: #f2f2f2;
}
```