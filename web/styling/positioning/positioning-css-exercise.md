---
author: Stefan-Stojanovic
tags:
  - positioning
type: normal
category: coding
links:
  - >-
    [MDN docs on
    positioning](https://developer.mozilla.org/en-US/docs/Web/CSS/position){website}
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="container">
        <header class="header">Header</header>
        <nav class="nav">Navigation</nav>
        <main class="main">Main Content</main>
        <aside class="sidebar">Sidebar</aside>
        <footer class="footer">Footer</footer>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Make the header "sticky" at the top of the screen.
    2. Position the navigation bar absolutely at the top-right inside the header.
    3. Keep the sidebar fixed on the right side of the screen.
    4. Use relative positioning for the main content to slightly shift it down.
    5. Ensure the footer stays at the bottom naturally.
    */

    .container {
      font-family: sans-serif;
      padding: 10px;
    }

    header, nav, main, aside, footer {
      padding: 10px;
      margin: 10px 0;
      background-color: #f2f2f2;
      border: 1px solid #ccc;
    }

    .header {
      background-color: #3498db;
      color: white;
    }

    .nav {
      background-color: #2ecc71;
    }

    .main {
      background-color: #f39c12;
    }

    .sidebar {
      background-color: #9b59b6;
      color: white;
    }

    .footer {
      background-color: #34495e;
      color: white;
    }
  startingJs: |
    // No JavaScript needed
---

# CSS Positioning Essentials

---

## Content

In this exercise, you’ll practice how to position elements using **static**, **relative**, **absolute**, **fixed**, and **sticky** positioning.  

Try completing each step based on the hints[1].

---

## Footnotes

[1: Hints]
- **Sticky header**:  

```css
.header {
  position: sticky;
  top: 0;
}
```

- Absolute nav inside header:

```css
.nav {
  position: absolute;
  top: 10px;
  right: 10px;
}
```

- Fixed sidebar:

```css
.sidebar {
  position: fixed;
  top: 0;
  right: 0;
  width: 120px;
}

- Relative main shift:

```css
.main {
  position: relative;
  top: 20px;
}
```