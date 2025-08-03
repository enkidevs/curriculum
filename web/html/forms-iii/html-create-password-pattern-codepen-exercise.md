---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [StackOverflow explanation for
    regexp](https://stackoverflow.com/questions/43127814/regex-for-at-least-1-number-1-lower-case-and-1-upper-case-letter){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a password input field with a label.
    2. Make the label clickable so it focuses the input field.
    3. Add a required pattern:
       - At least 1 lowercase letter
       - At least 1 uppercase letter
       - At least 1 number
       - Minimum 5 characters, maximum 30 characters
    4. Add a description message that displays if the input doesn't match the pattern.
    5. Add a submit button.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form, input, and button here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML password regexp

---

## Content

In this exercise, you will create a **password input field** with a required pattern:  
1. The password must contain at least:  
   - One lowercase letter  
   - One uppercase letter  
   - One number  
2. The password must be at least **5 characters** long and at most **30 characters**.  
3. Add a description message that will show if the input does not match the pattern.  
4. Add a submit button.  

In the end it should look like this:  
![html-password-regexp-finished](https://img.enkipro.com/e787cbc5ccdac92bdcab092396013184.png)  

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use `<label>` with `for` to link the label to the password input.  
- Use `<input type="password">` with the `pattern` attribute:  
```html
  <input 
    type="password" 
    pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{5,30}" 
    required
  >
```
- Add the title attribute to display the pattern description when the input is invalid.
Example with a submit button:
```html
<button type="submit">Submit</button>
```