---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <h1>Welcome to My Page</h1>
      <p>This page has a custom background and an image.</p>
      <img src="https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg" alt="Sample Image" width="300">
    </div>
  startingCss: |
    /* 
    Task:
    1. Set a background color for the page.
    2. Add a background image to the <body> and make it cover the entire viewport.
    3. Give the <img> element a border and rounded corners.
    4. Center the image horizontally.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Backgrounds and Images in CSS

---

## Content

In this exercise, you will:
- Apply background colors and images to a webpage.
- Use `background-size` and `background-repeat` effectively.
- Style an image with borders and rounded corners.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Background color:

```css
body { background-color: #f0f0f0; }
```

- Background image:

```html
body {
  background-image: url('https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg');
  background-size: cover;
  background-repeat: no-repeat;
}
```

- Image styling:

```css
img {
  border: 4px solid #333;
  border-radius: 10px;
  display: block;
  margin: 0 auto;
}
```