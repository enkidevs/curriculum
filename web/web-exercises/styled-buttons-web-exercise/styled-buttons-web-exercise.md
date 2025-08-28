---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <button class="primary">Continue</button>
      <button class="secondary">Cancel</button>
    </div>
  startingCss: |
    /* 
    Task:
    1. Style the .primary button with a blue background, white text, and padding.
    2. Style the .secondary button with a gray border, transparent background, and padding.
    3. Add a hover effect to .primary to darken the background slightly.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Styled Buttons

---

## Content

In this exercise, you’ll practice styling two different buttons using class selectors.

Your goals:
- Give the primary button a distinct, modern appearance.
- Make the secondary button visually different, but consistent.
- Add a simple hover effect for interactivity.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Use class selectors like `.primary {}`  
- You can use `background-color`, `color`, `border`, `padding`  
- Add a hover effect using `:hover`  
```css
.primary:hover {
  background-color: #004080;
}
```