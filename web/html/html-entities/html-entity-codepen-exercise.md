---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - '[Full entity list](https://dev.w3.org/html5/html-author/charref){website}'

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Display the following HTML entities correctly:
       - Ampersand (&)
       - Copyright (©)
       - Greater than (>)
       - Less than (<)
    2. You can use either the entity name (e.g. &amp;) or the entity number (e.g. &#38;).
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your text here if you'd like.
    Focus on correct HTML entities first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML entities

---

## Content

In this exercise, you have to display the following HTML character entities correctly:  

- Ampersand (`&`)  
- Copyright (`©`)  
- Greater than (`>`)  
- Less than (`<`)  

You can use either the entity **name** or **number**.  

In the end it should look like this:  
![html-entities-exercise-finished](https://img.enkipro.com/7570e752d8e91434234d6ec0437f0067.png)

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Entities start with `&` and end with `;`.  
- Examples:  
```html
  &amp;   →   &
  &lt;    →   <
  &gt;    →   >
  &copy;  →   ©
```