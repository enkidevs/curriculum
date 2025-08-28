---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <ul class="styled-list">
        <li>Item One</li>
        <li>Item Two</li>
        <li>Item Three</li>
      </ul>

      <ol class="numbered-list">
        <li>First</li>
        <li>Second</li>
        <li>Third</li>
      </ol>
    </div>
  startingCss: |
    /* 
    Task:
    1. Remove bullets from the unordered list.
    2. Style the ordered list to use uppercase Roman numerals.
    3. Add some padding and a custom left border to both lists.
    */

    /* Write your CSS below */
  startingJs: |
    // No JavaScript needed
---

# Customizing List Styles with CSS

---

## Content

In this exercise, you will:
- Customize the appearance of unordered and ordered lists.
- Remove default bullets.
- Use `list-style-type` to change numbering format.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Remove bullets using `list-style-type: none;`.
- Use `list-style-type: upper-roman;` for Roman numerals.
- Example for spacing and border:

```css
ul, ol {
  padding-left: 20px;
  border-left: 2px solid gray;
}
```