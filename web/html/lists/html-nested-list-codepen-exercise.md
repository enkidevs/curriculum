---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for ordered
    lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ol){website}
  - >-
    [MDN docs for unordered
    lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create an ordered list (<ol>) that:
       - Uses lowercase roman numerals (i, ii, iii).
       - Counts from high-to-low.
       - Has 3 items.
    2. The first item of the ordered list should be a nested unordered list (<ul>) with 3 items.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style the lists here if you'd like.
    Focus on correct HTML structure first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML nested list

---

## Content

In this exercise, you will create a **nested list**:  

1. An **ordered list** (`<ol>`) that uses lowercase roman numerals (`i, ii, iii`).  
2. The list should count **from high-to-low** and have 3 items.  
3. The **first item** of this ordered list should contain an **unordered sublist** (`<ul>`) with 3 items.  

In the end it should look like this:  
![html-nested-list-exercise-finished](https://img.enkipro.com/98f93975f999528b7663df2e6c3a8572.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `<ol>` tag for ordered lists and `<ul>` for unordered lists.  
- To set the list style to lowercase roman numerals, use the `type` attribute:  
```html
  <ol type="i" reversed>
    ...
  </ol>
```
- The reversed attribute will make the ordered list count from high-to-low.
