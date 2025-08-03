---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for image
    buttons](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/image){website}
  - >-
    [MDN docs for Replaced
    Element](https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with a simple image button using the URL below.
    2. Set the width and height of the image button to 150.
    
    Image URL:
    https://img.enkipro.com/21007b45886ba0a1f7088a0d51cbe63a.png
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML image button

---

## Content

In this exercise, you will:  
1. Create a form with a simple **image button**.  
2. Set the width and height of the button to **150**.  

In the end it should look like this:  
![html-image-button-finished](https://img.enkipro.com/21007b45886ba0a1f7088a0d51cbe63a.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<input type="image">` to create an image button.  
- Set the `src` attribute to the image URL.  
- Add the `width` and `height` attributes:  
```html
  <form>
    <input 
      type="image" 
      src="button.png" 
      width="150" 
      height="150" 
      alt="Submit button"
    >
  </form>
```