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

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Add a note above the list: "After completing the previous 7 steps, please do:".
    2. Create an ordered list (<ol>) with 4 items:
       - Add Eggs
       - Add Butter
       - Mix Everything
       - Bake At 250 Degrees For 15 Minutes
    3. Set the list to start counting from 8.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your note or list here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML list order

---

## Content

In this exercise, you will create an **ordered list** of instructions that starts counting from **8**.  

1. Add a note above the list:  
   > "After completing the previous 7 steps, please do:"  
2. Create an `<ol>` list with the following 4 items:  
   - Add Eggs  
   - Add Butter  
   - Mix Everything  
   - Bake At 250 Degrees For 15 Minutes  

In the end it should look like this:  
![html-list-order-exercise-finished](https://img.enkipro.com/6478200591eef449315cfc096f1b8ca2.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `<ol>` tag for ordered lists and `<li>` for list items.  
- To start the list from 8, use the `start` attribute:  
```html
  <ol start="8">
    <li>Add Eggs</li>
    ...
  </ol>
```