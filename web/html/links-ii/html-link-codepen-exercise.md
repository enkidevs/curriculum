---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    anchor](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create an image link that links to www.enki.com using the image URL below.
    2. Create a mailto link that opens the default email client with the email address "me@enkipro.com".
    3. Make sure both links open in a new tab.

    Image URL:
    https://img.enkipro.com/11f5d9e08926158c33765ab66837de6f.jpeg
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style the image or links here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML image link

---

## Content

In this exercise, you will create **two types of links**:  

1. An **image link** that links to `www.enki.com`.  
2. A **mailto link** that opens the user’s default email program and loads the address `me@enkipro.com`.  

Both links should open in a **new tab**.  

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `<a>` tag with `target="_blank"` to open in a new tab.  
- For the image link, wrap the `<img>` tag in an `<a>` tag:  
```html
  <a href="http://www.enki.com" target="_blank">
    <img src="image.jpg" alt="Link image">
  </a>
```
- For the email link, use mailto: in the href:
```html
<a href="mailto:me@enkipro.com" target="_blank">Email Me</a>
```