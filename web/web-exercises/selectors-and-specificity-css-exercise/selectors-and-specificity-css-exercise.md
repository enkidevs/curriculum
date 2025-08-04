---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <h1 class="title">Hello World</h1>
      <p id="intro">This is an introductory paragraph.</p>
      <p class="note">This is a note.</p>
      <div>
        <p class="note">Another note inside a div.</p>
      </div>
    </div>
  startingCss: |
    /* 
    Task:
    1. Make the <h1> text blue using a tag selector.
    2. Make the paragraph with id="intro" bold using an id selector.
    3. Style all elements with class="note" to have italic text.
    4. Target only the <p class="note"> inside the <div> and give it a red background.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Selectors and Specificity in CSS

---

## Content

In this exercise, you will:
- Practice using tag, class, and ID selectors.
- Learn how specificity works by applying styles to nested elements.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Tag selectors:  

```css
h1 { color: blue; }
```

- ID selectors:

```css
#intro { font-weight: bold; }
```

- Class selectors:

```css
.note { font-style: italic; }
```

- Nested selector:

```css
div .note { background: red; }
```