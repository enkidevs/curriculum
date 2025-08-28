---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <div class="card">
        <h2>CSS Backgrounds</h2>
        <p>Practice adding a background image and styling it.</p>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Set a background image on the .card using the provided URL.
    2. Make the background cover the entire .card.
    3. Center the background image.
    4. Add some padding and rounded corners to the .card.
    */

    .card {
      width: 300px;
      color: white;
      font-size: 16px;
    }

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# CSS Backgrounds and Images

---

## Content

In this exercise, you will:
- Add a background image to a container.
- Use `background-size`, `background-position`, and `border-radius` for styling.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the provided image URL:  
  `https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg`
- To make the image fill the container:

```css
.card {
  background-image: url('https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg');
  background-size: cover;
  background-position: center;
  border-radius: 12px;
  padding: 20px;
}
```