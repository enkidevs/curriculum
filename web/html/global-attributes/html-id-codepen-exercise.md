---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs on Global
    Attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Add the appropriate attribute to identify each radio button so the <label> elements correctly reference them.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <form>
        <fieldset>
          <legend>Favorite type of fish</legend>

          <div>
            <input type="radio" ???="freshwater" name="fish">
            <label for="freshwater">Freshwater</label>
          </div>

          <div>
            <input type="radio" ???="seawater" name="fish" checked>
            <label for="seawater">Seawater</label>
          </div>
        </fieldset>
      </form>
    </div>
  startingCss: |
    /* 
    You can style the form here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML id exercise

---

## Content

In this exercise, you have a form with **2 radio buttons**.  

You need to add the correct attribute so that the `<label>` elements correctly identify each button.  

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- The `for` attribute on a `<label>` must match the **unique id** of its corresponding input.  
- Add an `id` attribute to each `<input>` so that:  
```html
  <input type="radio" id="freshwater" name="fish">
  <label for="freshwater">Freshwater</label>
```