---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <h1>Main Heading</h1>
      <p>This is a <strong>strong</strong> word and an <em>emphasized</em> one.</p>
      <p>Water is H<sub>2</sub>O and Einstein’s equation is E = mc<sup>2</sup>.</p>
    </div>
  startingCss: |
    /*
    Task:
    1. Make <h1> center-aligned and underlined.
    2. Color the <strong> tag blue and <em> tag green.
    3. Make <sub> smaller and grey.
    4. Make <sup> red and slightly raised.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Styling Text Elements in CSS

---

## Content

In this exercise, you will:
- Style semantic inline tags such as `<strong>`, `<em>`, `<sub>`, and `<sup>`.
- Use CSS to visually differentiate meaning and structure.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Use `text-align: center` and `text-decoration: underline` for headings.  
- Use tag selectors like `strong { color: blue; }`  
- You can shrink subscript text with `font-size` and change its color.  
- Use `vertical-align: super` to raise superscript.
