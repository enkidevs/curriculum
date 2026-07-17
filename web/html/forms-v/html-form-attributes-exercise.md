---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for input form
    attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with three input fields: Full name, Phone number, and E-mail.
    2. Add the following attributes:
       - Autofocus on the first input field when the page loads.
       - Autocomplete for user convenience.
       - Allow multiple e-mail addresses for the email input.
    3. Add a submit button at the bottom of the form.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form, inputs, and button here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML input attributes

---

## Content

In this exercise, you will create a form with three input fields and a submit button.  

1. Add input fields for **Full name**, **Phone number**, and **E-mail**.  
2. Apply the following attributes:  
  - Autofocus on the Full name input so it's selected when the page loads.  
  - Autocomplete enabled for user convenience.  
  - Allow multiple e-mail addresses in the E-mail input.  
3. Add a submit button below the input fields.  

In the end it should look like this:  
![html-input-attributes-finished](https://img.enkipro.com/c380485b7fd7c369b0e34ade5bbca33b.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use the `autofocus` attribute on the Full name input.  
- Use the `autocomplete="on"` attribute to enable autofill.  
- Use the `multiple` attribute for the E-mail input so the user can enter multiple addresses.  
- Add a `<button type="submit">` to submit the form.  
