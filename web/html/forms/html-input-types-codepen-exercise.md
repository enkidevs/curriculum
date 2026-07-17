---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs and examples for
    forms](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with 4 input elements:
       - One text input for full name.
       - Two radio buttons for choosing age (<18 and 18>).
       - One submit button.
    2. Ensure the radio buttons share the same "name" attribute.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form and inputs here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML input types

---

## Content

In this exercise, you will create a form with **4 input elements**:  
1. A text input field for the full name.  
2. Two radio buttons for choosing your age:  
   - One for "<18"  
   - One for "18>"  
3. A submit button.  

In the end it should look like this:  
![html-input-types-finished](https://img.enkipro.com/63a8cdcca33994da4329ee1913026c09.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<input type="text">` for the full name field.  
- Use `<input type="radio">` for each age option, and give them the same `name` so they behave as a group.  
- Use `<input type="submit">` for the submit button.  
