---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [Documentation on
    MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img){documentation}
  - >-
    [w3schools on
    Height](https://www.w3schools.com/tags/att_img_height.asp){website}
  - >-
    [w3schools on
    width](https://www.w3schools.com/tags/att_img_width.asp){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create an image using the URL below.
    2. Add the text "Cute dog eating watermelon" as both:
       - Alt text (for when the image cannot load).
       - Title (for when the user hovers over the image).
    3. Set the width and height to 300.

    Image URL:
    https://img.enkipro.com/22b83df6e44786928305329bbf9e082a.jpeg
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your image here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML image exercise 3

---

## Content

In this exercise, you will:  
1. Create an image using the **image URL (located in `html.index` in the `code` tab)**.  
2. Add the note **"Cute dog eating watermelon"** so it:  
  - Appears as **alt text** if the image can’t load.  
  - Appears as a **tooltip** when the user hovers over the image.  
3. Set the **width and height to 300**.  

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `alt` attribute for the alternative text.  
- Use the `title` attribute for the hover tooltip.  
- Set dimensions using the `width` and `height` attributes:  
```html
  <img src="dog.jpeg" alt="Cute dog eating watermelon" title="Cute dog eating watermelon" width="300" height="300">
```