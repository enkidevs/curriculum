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
    1. Add the appropriate language attribute (lang) to each paragraph.
    2. Change the direction of the fourth paragraph to right-to-left (rtl).
    3. Hide the fifth paragraph.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <p>¿Cómo estás?</p>
      <p>Comment allez-vous?</p>
      <p>How are you?</p>
      <p>كيف حالك؟</p>
      <p>Quid agis</p>
    </div>
  startingCss: |
    /* 
    You can style your paragraphs here if you'd like.
    Focus on correct HTML attributes first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML multi attribute exercise

---

## Content

In this exercise, you have **5 sentences**, each inside a `<p>` element.  

1. Add the correct **language attribute** (`lang`) to each sentence.  
2. Change the **direction** of the 4th paragraph so that it reads right-to-left.  
3. Hide the 5th paragraph completely.  

In the end it should look like this:  
![html-multi-attribute-exercise-finished](https://img.enkipro.com/865264f88c9f9471b7eb82f49c871de8.png)

If you’re unsure how, check the hints[1].  

---

## Footnotes

[1: Hints]
- Use the `lang` attribute to specify the language, e.g., `lang="es"` for Spanish.  
- Use the `dir` attribute with a value of `rtl` to set text direction.  
- Use the `hidden` attribute to hide an element completely:  
```html
  <p hidden>This will be hidden</p>
```