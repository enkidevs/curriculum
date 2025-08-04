---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    b](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/b){website}
  - >-
    [MDN docs for
    strong](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/strong){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Write two sentences using the correct elements (<b> and <strong>).
    2. Each sentence should highlight one word using one of the elements.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your sentences here if you'd like.
    Focus on using the correct elements first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML b strong

---

## Content

In this exercise, you will write **two sentences** using the correct elements:  
- `<b>` for stylistic offset (bold)  
- `<strong>` for important text  

In the end it should look like this:  
![html-b-strong-finished](https://img.enkipro.com/c59844a8272534e77ce9c2c8e63df65e.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<b>` is for bold text that is **stylistic only**, not semantically important.  
- `<strong>` is for text that is **semantically important** and usually bolded by default.  
- Example:  
```html
  <strong>Warning:</strong> This is important!
```