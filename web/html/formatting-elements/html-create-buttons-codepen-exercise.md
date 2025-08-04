---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button){website}
  - >-
    [MDN docs for global
    attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with an input field and 3 buttons (Submit, Clear, Refresh).
    2. Use appropriate button attributes (type="submit", type="reset", disabled).
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form and buttons here if you'd like.
    This is optional – focus on correct HTML first. 
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML buttons

---

## Content

In this exercise, you will:
1. Create a form with an input field and **3 buttons**: Submit, Clear, Refresh.
2. Make the first button submit the form.
3. Make the second button clear the input.
4. Make the third button unclickable.

In the end it should look like this:
![html-buttons-finished](https://img.enkipro.com/a5642be7be6bba356eaf4071c55be382.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `<form>` element to wrap your input and buttons.  
- Use `<button type="submit">` to create a button that submits a form.  
- You can clear input by using a button with `type="reset"`.  
- Make a button unclickable by adding the `disabled` attribute:  
```html
  <button disabled>Refresh</button>
```