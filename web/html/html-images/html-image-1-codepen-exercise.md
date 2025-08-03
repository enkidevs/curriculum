---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - '[w3schools on tags](https://www.w3schools.com/tags/tag_base.asp){website}'
  - >-
    [Documentation on
    MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/base){documentation}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Set all 4 image links to open http://www.enki.com in a new tab when clicked.
    2. Do not edit the <a> or <img> tags directly. Add one line of code above the first image link.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <a href="">
        <img src="https://pbs.twimg.com/profile_images/669923228882595841/1xXW9afw_400x400.jpg" width="100" height="100" alt="Enki logo">
      </a>

      <a href="">
        <img src="https://pbs.twimg.com/profile_images/669923228882595841/1xXW9afw_400x400.jpg" width="100" height="100" alt="Enki logo">
      </a>

      <a href="">
        <img src="https://pbs.twimg.com/profile_images/669923228882595841/1xXW9afw_400x400.jpg" width="100" height="100" alt="Enki logo">
      </a>

      <a href="">
        <img src="https://pbs.twimg.com/profile_images/669923228882595841/1xXW9afw_400x400.jpg" width="100" height="100" alt="Enki logo">
      </a>
    </div>
  startingCss: |
    /* 
    You can style the images or links here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML image exercise 1

---

## Content

In this exercise, you need to ensure that **all four image links**:  
1. Open **www.enki.com** when clicked.  
2. Open in a **new browser tab**.  

⚠️ You cannot modify any of the `<a>` or `<img>` tags.  
Instead, add **one line of code above the first image link** to achieve this.  

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- The `<base>` tag can be used to set a default URL and behavior for all links on the page.  
- Use the `href` attribute to set the default destination and `target="_blank"` to open in a new tab:  
```html
  <base href="http://www.enki.com" target="_blank">
```