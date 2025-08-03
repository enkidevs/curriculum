---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for radio
    buttons](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/radio){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with 3 radio buttons: Boiled, Fried, Other.
    2. Each button should have a label so clicking the label selects the radio button.
    3. Set the "Fried" button as checked by default.
    4. Add a submit button below the radio buttons.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form and radio buttons here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML radio buttons

---

## Content

In this exercise, you will create a **form** with **3 radio buttons** about choosing your favorite type of food:  
1. Each button should have a label (**Boiled**, **Fried**, **Other**).  
2. The **Fried** radio button should be selected by default.  
3. Add a submit button below the radio buttons.  
4. Ensure that clicking on the label selects the radio button.  

In the end it should look like this:  
![html-radio-buttons-finished](https://img.enkipro.com/5cd13aab372444af4efa46707be607a9.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<input type="radio">` for each option.  
- Give all the radio buttons the same `name` so only one can be selected at a time.  
- Use the `checked` attribute on the Fried option so it’s selected by default.  
- Use `<label>` to make both the text and the button clickable.  
- Add a `<button type="submit">` or `<input type="submit">` below the options.  
