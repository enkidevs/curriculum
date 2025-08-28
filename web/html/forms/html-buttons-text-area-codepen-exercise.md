---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    reset](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/reset){website}
  - >-
    [MDN docs for
    submit](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/submit){website}
  - >-
    [MDN docs and examples for
    forms](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form){website}
  - >-
    [MDN docs for
    textarea](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/textarea){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a form with a <textarea> and 2 buttons (Submit & Reset).
    2. Add a placeholder to the textarea: "Input text here".
    3. Use <input type="submit"> and <input type="reset"> for the buttons.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your form, textarea, and buttons here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML textarea buttons

---

## Content

In this exercise, you will create a form with a **textarea** and **2 buttons**:  
1. A Submit button to submit the form.  
2. A Reset button to clear the textarea.  

The textarea should have a placeholder that says:  
```plain-text
Input text here
```

In the end it should look like this:  
![html-textarea-buttons-finished](https://img.enkipro.com/f990f28d28916def77ccfb354c836a81.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<form>` to wrap the textarea and buttons.  
- Use `<textarea placeholder="Input text here"></textarea>` to create the text area with a placeholder.  
- Use `<input type="submit">` for the submit button and `<input type="reset">` for the reset button.  
