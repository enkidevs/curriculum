---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs on Global
    Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Add the appropriate style attribute to each element so they match the preview.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <p>This is a paragraph</p>
      <h2>This is a header</h2>
    </div>
  startingCss: |
    /* 
    You can style the elements using inline styles only for this exercise.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML style exercise

---

## Content

In this exercise, you have two elements: a paragraph and a header.  

You need to add the correct **style attributes** so they match the styling shown in the image below.  

In the end it should look like this:  
![html-style-exercise-finished](https://img.enkipro.com/5f935ed48140f1adfdf54daca2cf0233.png)

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `style` attribute directly on each element:  
```html
  <p style="color: red; font-size: 20px;">This is a paragraph</p>
```
- Set different styles for the paragraph and the header to match the example.