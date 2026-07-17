---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    checkboxes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with 8 checkboxes for different music genres (Rock, Country, Jazz, etc.).
    2. The "House" checkbox should be checked by default.
    3. The last checkbox should be "Other" and have a text field next to it for the user to enter a custom answer.
    4. Add a submit button below the checkboxes.
    5. Make sure clicking on the label toggles the checkbox.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form and checkboxes here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML Checkbox groups

---

## Content

In this exercise, you will create a **form** with **8 checkboxes** about choosing your favorite music genre(s):  
1. Each checkbox should have a label (e.g., Rock, Country, Jazz, House, Other).  
2. The **House** checkbox should be checked by default.  
3. The last checkbox ("Other") should have a text field next to it so the user can type a custom answer.  
4. Add a submit button below the checkboxes.  
5. Make sure clicking the label toggles the checkbox.  

In the end it should look like this:  
![html-checkbox-groups-finished](https://img.enkipro.com/f80918b4dcabb9ed95a65c8ac29b1338.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Wrap each checkbox and its label using the `<label>` element so they’re clickable together.  
- Use `<input type="checkbox">` for each genre.  
- Use the `checked` attribute on the House checkbox to have it selected by default.  
- Add an `<input type="text">` next to the Other checkbox.  
- Add a `<button type="submit">` or `<input type="submit">` at the bottom of the form.  
