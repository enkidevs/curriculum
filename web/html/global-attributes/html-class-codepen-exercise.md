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
    1. Add the correct class attributes from the CSS panel to each element so they match the styling in the preview.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <p>Some paragraph</p>
      <article>
        Some article
      </article>
    </div>
  startingCss: |
    .fire {
      color: #ce2029;
      font-size: 68px;
    }

    .sky {
      color: #87ceeb;
      font-size: 33px;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML class exercise

---

## Content

In this exercise, you will use the **class attribute** to style two elements using the CSS classes provided:  

1. Apply the `fire` class to one element.  
2. Apply the `sky` class to the other element.  

In the end it should look like this:  
![html-class-exercise-finished](https://img.enkipro.com/f011cad96a7130ccabcb16850a574f73.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `class` attribute on elements to assign the appropriate style:  
```html
  <p class="fire">Some paragraph</p>
```
- Match the elements with the classes defined in the CSS panel.