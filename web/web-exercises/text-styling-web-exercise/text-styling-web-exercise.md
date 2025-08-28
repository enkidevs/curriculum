---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <p>This is <strong>important</strong> and should stand out.</p>
      <p>This is <em>emphasized</em> text.</p>
      <p>Use <sub>subscript</sub> and <sup>superscript</sup> where needed.</p>
    </div>
  startingCss: |
    /* 
    Task:
    1. Make strong text red.
    2. Make emphasized text italic and blue.
    3. Style subscript with smaller font-size and grey.
    4. Style superscript with smaller font-size and green.
    */
    
    /* Your styles below */
  startingJs: |
    // No JavaScript needed
---

# Styling Text Elements with CSS

---

## Content

In this exercise, you will:
- Apply styles to `<strong>`, `<em>`, `<sub>`, and `<sup>` elements using CSS.
- Understand how to visually distinguish text types semantically.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- You can target elements directly by their tag name:
```css
strong {
  color: red;
}
em {
  font-style: italic;
  color: blue;
}
sub {
  font-size: 0.8em;
  color: gray;
}
sup {
  font-size: 0.8em;
  color: green;
}
```