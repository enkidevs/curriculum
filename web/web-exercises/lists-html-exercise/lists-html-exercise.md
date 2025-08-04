---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <!-- 
      Task:
      1. Create an unordered list of 3 fruits.
      2. Create an ordered list of 3 daily tasks.
      3. Nest a sub-list inside one of the fruits showing 2 varieties.
      -->
    </div>
  startingCss: |
    /* No styling needed for this one */
  startingJs: |
    // No JavaScript needed
---

# Working with Lists in HTML

---

## Content

In this exercise, you will:
- Create unordered and ordered lists using `<ul>` and `<ol>`.
- Use `<li>` to list individual items.
- Nest a list within another list item to show hierarchy.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Use `<ul>` for unordered (bulleted) lists.  
- Use `<ol>` for ordered (numbered) lists.  
- Example of a nested list:
```html
<ul>
  <li>Fruit
    <ul>
      <li>Apple</li>
      <li>Banana</li>
    </ul>
  </li>
</ul>
```