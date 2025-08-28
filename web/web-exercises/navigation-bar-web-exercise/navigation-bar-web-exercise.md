---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <nav class="navbar">
        <h1 class="logo">MySite</h1>
        <ul class="nav-links">
          <li><a href="#">Home</a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Services</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </nav>
    </div>
  startingCss: |
    /* 
    Task:
    1. Make the navigation bar horizontal.
    2. Space the nav items evenly.
    3. Remove default list styles.
    4. Highlight links on hover.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Navigation Bar Layout

---

## Content

In this exercise, you will:
- Create a horizontal navigation bar.
- Evenly space the navigation items.
- Add a hover effect for better interactivity.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Remove default list styles:

```css
.nav-links {
  list-style: none;
  padding: 0;
  margin: 0;
}
```

- Horizontal alignment:

```css
.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
```

- Hover effect:

```css
.nav-links a:hover {
  color: blue;
  text-decoration: underline;
}
```