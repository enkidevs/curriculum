---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <!-- 
        Task:
        1. Create an unordered list of 3 grocery items.
        2. Create an ordered list of 3 tasks you do in the morning.
        3. Add a nested list inside one of the grocery items for sub-items.
      -->
    </div>
  startingCss: |
    /* No CSS required for this task */
  startingJs: |
    // No JavaScript needed
---

# Writing Ordered and Unordered Lists in HTML

---

## Content

In this exercise, you will:
- Write unordered (`<ul>`) and ordered (`<ol>`) lists.
- Use list items (`<li>`) properly.
- Create nested lists.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- A basic unordered list:
```html
<ul>
  <li>Milk</li>
  <li>Eggs</li>
  <li>Bread</li>
</ul>
```
- An ordered list:
```html
<ol>
  <li>Wake up</li>
  <li>Brush teeth</li>
  <li>Have breakfast</li>
</ol>
```
- A nested list:
```html
<li>Fruits
  <ul>
    <li>Apples</li>
    <li>Bananas</li>
  </ul>
</li>
```