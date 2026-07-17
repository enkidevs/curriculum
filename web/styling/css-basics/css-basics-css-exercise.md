---
author: Stefan-Stojanovic
tags:
  - css-basics
type: normal
category: coding
links:
  - >-
    [MDN: CSS Basics](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Cascade_and_inheritance){website}
  - >-
    [Specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity){website}
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <h1 class="title">Welcome to CSS Basics</h1>
      <p id="intro">This is an introduction paragraph.</p>
      <p class="highlight">This paragraph should stand out.</p>
      <div class="container">
        <p class="highlight">Another highlighted paragraph inside a container.</p>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Style the <h1> text to be blue using a tag selector.
    2. Make the #intro paragraph bold using an ID selector.
    3. Style all elements with the .highlight class to have a yellow background.
    4. Override the .highlight background color inside .container to orange.
    5. Experiment with inline styles to see cascade behavior.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# CSS Basics: Selectors, Specificity & Cascade

---

## Content

In this exercise, you’ll explore **CSS selectors** and how **specificity** and **cascade** affect styling.

You’ll also learn how to combine class, ID, and element selectors to achieve different results. Checkout the hints[1] to help you complete the task.

---

## Footnotes

[1: Hints]
- Target an element by tag:

```css
h1 {
  color: blue;
}
```

- Target an element by ID:

```css
#intro {
  font-weight: bold;
}
```

- Target all highlighted paragraphs:

```css
.highlight {
  background-color: yellow;
}
```

- Override styles inside a container:

```css
.container .highlight {
  background-color: orange;
}
```

- Inline styles have the highest specificity but are not recommended for long-term styling.
