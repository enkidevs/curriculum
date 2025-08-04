---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <!-- 
      Task:
      1. Create a simple profile card using HTML.
      2. It should have a name, a short bio, and an image.
      -->
      <div class="card">
        <!-- Your content here -->
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Style the .card with a border, padding, and max width.
    2. Center the content inside the card.
    3. Make the image round using border-radius.
    */

    .card {
      /* Style the card */
    }

    .card img {
      /* Style the image */
    }
  startingJs: |
    // No JavaScript needed
---

# Build a Profile Card

---

## Content

In this exercise, you will:
- Use HTML to structure a basic profile card.
- Style it with CSS to look clean and centered.
- Round the image with `border-radius`.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Use a `<div class="card">` to wrap the content.  
- Use `<h2>`, `<p>`, and `<img src="...">` for name, bio, and image.  
- For a round image:
```css
.card img {
  width: 100px;
  height: 100px;
  border-radius: 50%;
}
```