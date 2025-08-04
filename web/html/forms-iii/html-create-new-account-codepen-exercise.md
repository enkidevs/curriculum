---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [StackOverflow explanation for
    regexp](https://stackoverflow.com/questions/43127814/regex-for-at-least-1-number-1-lower-case-and-1-upper-case-letter){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with two input fields: Username and Password.
    2. Each input should have a label so the user can click on it to focus the field.
    3. Add placeholders for both inputs.
    4. Add a password pattern validation:
       - Only lowercase and uppercase letters, numbers
       - Minimum length: 8 characters
       - Maximum length: 20 characters
    5. Show a description message if the password does not match the pattern.
    6. Make the form un-submittable until required fields are filled.
    7. Add two buttons: Submit and Reset.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form, inputs, and buttons here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML create account

---

## Content

In this exercise, you will create a **form** with:  
1. Two input fields: **Username** and **Password**.  
2. A Submit button and a Reset button.  

Requirements:  
- Each input field must have a **label** that is clickable to focus the input field.  
- Add **placeholders** for both input fields.  
- Add a password pattern so the password must:  
  - Only contain lowercase and uppercase letters and numbers.  
  - Be **at least 8** and **at most 20** characters long.  
- Show a description message if the user’s password does not match the pattern.  
- Make the form **un-submittable** until all fields are filled out correctly.  

In the end it should look like this:  
![html-create-account-finished](https://img.enkipro.com/f7427eeaeed434d92817cf1465a8dc7a.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<label>` and `for` attributes to link labels and inputs.  
- Use the `required` attribute to make the fields mandatory.  
- Use the `pattern` attribute on the password input to set the validation rule:  
```html
  <input type="password" pattern="[A-Za-z0-9]{8,20}" required>
```
- Add two buttons:
```html
<button type="submit">Submit</button>
<button type="reset">Reset</button>
```