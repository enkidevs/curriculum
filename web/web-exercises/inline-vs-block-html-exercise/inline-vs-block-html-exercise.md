---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <!-- 
        Task:
        1. Add a <span> with your name and a <strong> tag with a title.
        2. Create two <div> elements, each with a short sentence.
        3. Observe how inline and block elements behave differently.
      -->
    </div>
  startingCss: |
    /* Optional: Add borders to see how elements behave visually */
    span, strong {
      border: 1px solid blue;
    }

    div {
      border: 1px solid red;
      margin: 10px 0;
    }
  startingJs: |
    // No JavaScript needed
---

# Inline vs Block Elements in HTML

---

## Content

In this exercise, you will:
- Use inline elements like `<span>` and `<strong>`.
- Use block-level elements like `<div>`.
- Understand how their layout differs by default.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Inline elements do not start on a new line.
- Block-level elements start on a new line and take full width.
- Example:

```html
<!--Span and strong are inline -->
<p>This is a <span>name</span> with a <strong>title</strong>.</p>

<div>This is block one.</div>
<div>This is block two.</div>
```