---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN Docs for
    kbd](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/kbd){website}
  - >-
    [MDN Docs for
    code](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/code){documentation}
  - >-
    [MDN Docs for
    samp](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/samp){website}
  - >-
    [MDN Docs for
    var](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/var){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Encapsulate each sentence using the correct element (<code>, <kbd>, <samp>, <var>).
    2. You may nest 2 elements together if appropriate.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
      <p>
        If you wish to undo press Ctrl + Z.
      </p>
      <p>
        X + Y = Z
      </p>
      <p>
        Installation failed, press Retry to try again.
      </p>
      <p>
        To calculate the sum of two numbers you need to call the calculateSum() function.
      </p>
    </div>
  startingCss: |
    /* 
    You don't need to style anything for this exercise.
    Focus on using the correct elements first.
    */
  startingJs: |
    // No JavaScript needed for this exercise

---

# HTML computer code

---

## Content

In this exercise, you will work with **four semantic HTML elements** used to represent different types of code-related text:  
- `<kbd>` for user input (like keyboard shortcuts)  
- `<var>` for variables in code or math  
- `<samp>` for sample output from a system or program  
- `<code>` for code snippets  

Use the correct element for each sentence, and nest elements together where appropriate (for example, `<kbd>` inside `<code>`).  

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- `<kbd>` is for keyboard inputs like **Ctrl + Z**.  
- `<var>` is used for variables like `X`, `Y`, and `Z`.  
- `<samp>` is for output text like error messages.  
- `<code>` is for code references like `calculateSum()`.  
- You can nest elements if needed:  
```html
  <code><kbd>Ctrl</kbd> + <kbd>Z</kbd></code>
```