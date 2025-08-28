---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <table class="pricing-table">
        <thead>
          <tr>
            <th>Plan</th>
            <th>Price</th>
            <th>Features</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Basic</td>
            <td>$10/mo</td>
            <td>1 Website</td>
          </tr>
          <tr>
            <td>Pro</td>
            <td>$20/mo</td>
            <td>5 Websites</td>
          </tr>
          <tr>
            <td>Enterprise</td>
            <td>$50/mo</td>
            <td>Unlimited</td>
          </tr>
        </tbody>
      </table>
    </div>
  startingCss: |
    /* 
    Task:
    1. Make the table responsive and easy to read on mobile.
    2. On small screens (<600px), stack each row as a card instead of a table.
    3. Keep headings visible in mobile view by showing them above each value.
    */

    /* Base styles */
    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 12px;
      text-align: center;
      border: 1px solid #ccc;
    }

    thead {
      background-color: #f5f5f5;
    }

    /* Mobile-friendly styles */
    @media (max-width: 600px) {
      table, thead, tbody, th, td, tr {
        display: block;
      }

      tr {
        margin-bottom: 15px;
        border: 1px solid #ddd;
        padding: 10px;
        border-radius: 8px;
        background: #fff;
      }

      td {
        text-align: left;
        padding-left: 40%;
        position: relative;
      }

      td::before {
        content: attr(data-label);
        position: absolute;
        left: 10px;
        font-weight: bold;
        color: #555;
      }

      thead {
        display: none;
      }
    }
  startingJs: |
    // No JavaScript needed
---

# Mobile-Friendly Responsive Table

---

## Content

In this exercise, you will:
- Make tables adapt to small screens using CSS.
- Convert table rows into **cards** for better mobile readability.
- Use `attr(data-label)` to dynamically display column names above values.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Make table cells act like cards:

```css
@media (max-width: 600px) {
  td {
    display: block;
    width: 100%;
  }
}
```

- Use td::before with data-label to simulate headers:
```css
td::before {
  content: attr(data-label);
}
```