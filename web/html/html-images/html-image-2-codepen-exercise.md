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

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create 2 images using the same cat image URL:
       https://img.enkipro.com/2e6f97afb190936d1b4376bbb253d5c7.jpeg
    2. Add an alt attribute "Picture of a cute cat" to both images.
    3. Break the second image by removing ".jpeg" from its URL.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your images here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML image exercise 2

---

## Content

In this exercise, you will create **2 identical images** using the same cat image URL **(located in `html.index` in the `code` tab)**: 

Then:  
1. Add an `alt` attribute with the text **"Picture of a cute cat"** to both images.  
2. Break the second image by removing `.jpeg` from its URL so the alt text is displayed.  

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `<img>` element with the `src` attribute for the image link.  
- Use the `alt` attribute to display alternative text when the image cannot load.  
- Example:  
```html
  <img src="cat.jpeg" alt="Picture of a cute cat">
```