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
            <th>Product</th>
            <th>Price</th>
            <th>Stock</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Laptop</td>
            <td>$1200</td>
            <td>In Stock</td>
          </tr>
          <tr>
            <td>Headphones</td>
            <td>$150</td>
            <td>Out of Stock</td>
          </tr>
          <tr>
            <td>Keyboard</td>
            <td>$80</td>
            <td>In Stock</td>
          </tr>
          <tr>
            <td>Monitor</td>
            <td>$300</td>
            <td>In Stock</td>
          </tr>
        </tbody>
      </table>
    </div>
  startingCss: |
    /* 
    Task:
    1. Apply a border-collapse style to the table.
    2. Alternate row colors (zebra striping).
    3. Highlight table rows on hover.
    4. Style <th> cells differently from <td> cells.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Styling Tables with CSS

---

## Content

In this exercise, you will:
- Learn how to style tables for better readability.
- Apply zebra striping to alternate rows.
- Add hover effects to highlight rows.
- Style headers differently from data cells.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Collapse borders:

```css
table {
  width: 100%;
  border-collapse: collapse;
}
```

- Zebra striping:

```css
tbody tr:nth-child(odd) {
  background-color: #f9f9f9;
}

tbody tr:nth-child(even) {
  background-color: #eaeaea;
}
```

- Hover effect:

```css
tbody tr:hover {
  background-color: #d6eaff;
}
```

- Header styling:

```css
th {
  background-color: #333;
  color: white;
  padding: 10px;
}

td {
  padding: 10px;
  border: 1px solid #ccc;
}
```