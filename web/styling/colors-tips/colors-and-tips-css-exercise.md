---
author: Stefan-Stojanovic
tags:
  - colors
type: normal
category: coding
links:
  - >-
    [MDN: CSS Colors](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value){website}
  - >-
    [Accessible Color Contrast](https://developer.mozilla.org/en-US/docs/Web/Accessibility/Guides/Colors_and_Luminance){website}
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <h1 class="title">Color Playground</h1>
      <p class="primary">This paragraph should use the primary color.</p>
      <p class="secondary">This paragraph should use the secondary color.</p>
      <div class="gradient-box">Gradient Background</div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Set the .primary text color to blue using HEX.
    2. Set the .secondary text color to an RGBA green with 60% opacity.
    3. Give the .gradient-box a vertical linear gradient from #ff7e5f to #feb47b.
    4. Add a text shadow to the .title for better contrast.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# CSS Colors & Styling Tips

---

## Content

In this exercise, you’ll practice using **different CSS color formats** and **styling techniques**.  

You’ll explore HEX, RGB, RGBA, gradients, and shadows to enhance visual contrast. Checkout the hints[1] if you need help.

---

## Footnotes

[1: Hints]

- HEX colors:

```css
.primary {
  color: #007bff;
}
```

- RGBA colors with opacity:

```css
.secondary {
  color: rgba(34, 139, 34, 0.6);
}

- Gradient backgrounds:

```css
.gradient-box {
  background: linear-gradient(to bottom, #ff7e5f, #feb47b);
}

- Add a subtle text shadow for contrast:

```css
.title {
  text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
}
```