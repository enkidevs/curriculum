---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <!-- Create your table here -->
    </div>
  startingCss: |
    /* 
    Task:
    1. Create a table with 3 columns: Name, Age, and City.
    2. Add 3 rows of data inside <tbody>.
    3. Style the table borders and add some padding to cells.
    */
  startingJs: |
    // No JavaScript needed
---

# Basic HTML Table

---

## Content

In this exercise, you will:
- Create a simple table using `<table>`, `<thead>`, `<tbody>`, `<tr>`, `<th>`, and `<td>`.
- Add some basic CSS to improve readability.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Table structure:

```html
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Age</th>
      <th>City</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Ana</td>
      <td>28</td>
      <td>Belgrade</td>
    </tr>
    <tr>
      <td>Marko</td>
      <td>32</td>
      <td>Novi Sad</td>
    </tr>
    <tr>
      <td>Jelena</td>
      <td>25</td>
      <td>Niš</td>
    </tr>
  </tbody>
</table>
```

- Simple styling:

```css
table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: left;
}

th {
  background-color: #f4f4f4;
}
```