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
    1. Add the appropriate attribute to the <img> element so that a tooltip "Picture of Mount Everest" appears when the user hovers over the image.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <img 
        src="https://upload.wikimedia.org/wikipedia/commons/d/d1/Mount_Everest_as_seen_from_Drukair2_PLW_edit.jpg" 
        height="300" 
        width="555">
    </div>
  startingCss: |
    /* 
    No extra CSS needed. Focus on correct HTML attributes.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML title exercise

---

## Content

In this exercise, you will add the appropriate attribute to the `<img>` element so that a tooltip with the text **"Picture of Mount Everest"** appears when the user hovers over the picture.  

In the end it should look like this:  
![html-title-exercise-finished](https://img.enkipro.com/45b70a167bf50d8dcce39454cc86612a.png)

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `title` attribute to show a tooltip when the user hovers over an element.  
```html
  <img src="mountain.jpg" title="Picture of Mount Everest">
```