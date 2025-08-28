---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code gallery">
      <h1>My Image Gallery</h1>
      <div class="images">
        <img src="https://img.enkipro.com/d10e9ce0c0402fcf03af5f4257197d76.png" alt="Sample 1">
        <img src="https://img.enkipro.com/a1684a7df81e84eb0167ccc76379011b.png" alt="Sample 2">
        <img src="https://img.enkipro.com/c3e32170cfa371e46883a17a8ccc057c.png" alt="Sample 3">
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Make the gallery images display side by side using flexbox.
    2. Add spacing between images.
    3. On hover, slightly scale up the image and add a subtle box shadow.
    4. Center the gallery title.
    */

    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
    }

    .gallery h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    .images img {
      width: 150px;
      transition: transform 0.2s, box-shadow 0.2s;
    }

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Responsive Image Gallery

---

## Content

In this exercise, you will:
- Build a simple image gallery.
- Use flexbox for layout.
- Add hover effects for better interactivity.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Flexbox:  

```css
.images {
  display: flex;
  gap: 10px;
  justify-content: center;
}
```

- Hover effect:

```css
.images img:hover {
  transform: scale(1.1);
  box-shadow: 0 4px 10px rgba(0,0,0,0.3);
}
```