---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for unordered
    lists](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ul){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create an unordered list (<ul>) with 3 items: CSS, HTML, and JavaScript.
    2. The second item (HTML) should contain a nested unordered list with 3 items: Attributes, Elements, Events.
    3. The second item of that nested list (Elements) should contain another unordered sublist with 3 items: <body>, <head>, <html>.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style the nested lists here if you'd like.
    Focus on correct HTML structure first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML unordered list

---

## Content

In this exercise, you will create a **nested unordered list**:  

1. The first `<ul>` should have 3 items: **CSS**, **HTML**, and **JavaScript**.  
2. The second item (**HTML**) should contain a nested `<ul>` with 3 items: **Attributes**, **Elements**, and **Events**.  
3. The second item (**Elements**) of the nested list should itself contain another `<ul>` with 3 items:  
   - `<body>`  
   - `<head>`  
   - `<html>`  

In the end it should look like this:  
![html-unordered-list-exercise-finished](https://img.enkipro.com/223941006f3f4876de7ba218ce84c20a.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `<ul>` tag for unordered lists and `<li>` for list items.  
- Nested lists must be placed **inside an `<li>` element**, not directly inside another `<ul>`.  
```html
  <ul>
    <li>Item
      <ul>
        <li>Nested item</li>
      </ul>
    </li>
  </ul>
```