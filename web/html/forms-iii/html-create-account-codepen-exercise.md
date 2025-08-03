---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for
    input](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with two input fields: Username and Password.
    2. Each input should have a label so the user can click on the label to focus the input.
    3. Add placeholders for both inputs.
    4. Make the form un-submittable until both fields are filled (use the required attribute).
    5. Add a submit button with a keyboard shortcut "s".
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

# HTML username password account

---

## Content

In this exercise, you will create a **form** with:  
1. Two input fields: **Username** and **Password**.  
2. A submit button.  

Requirements:  
- The **labels** for Username and Password should be clickable to focus the input fields.  
- Each input field should have a **placeholder**.  
- Make the form **un-submittable** until both fields are filled out using the `required` attribute.  
- Add a **keyboard shortcut** to the submit button using the letter `"s"`.  

In the end it should look like this:  
![html-username-password-account-finished](https://img.enkipro.com/56b65c3a580b9d329a5f7f24766707ab.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<label for="username">` and `<input id="username">` to link labels and inputs.  
- Use `<input type="text">` for the username and `<input type="password">` for the password.  
- Add the `required` attribute to both inputs so the form can't be submitted empty.  
- Use the `accesskey` attribute on the submit button:  
```html
  <button type="submit" accesskey="s">Submit</button>
```