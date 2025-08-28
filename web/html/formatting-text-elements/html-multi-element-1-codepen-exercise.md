---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    subscript](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sub){website}
  - >-
    [MDN docs for
    superscript](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/sup){website}
  - >-
    [MDN docs for
    b](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/b){website}
  - >-
    [MDN docs for
    strong](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/strong){website}
  - >-
    [MDN docs for
    i](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/i){website}
  - >-
    [MDN docs for
    em](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/em){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Write the sentences using the appropriate elements (<strong>, <em>, <b>, <i>, <sub>, <sup>).
    2. Separate each sentence with a line break (<br>).
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your text here if you'd like.
    Focus on using the correct elements first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML multi element 1

---

## Content

In this exercise, you will write **multiple sentences** using the appropriate elements:  
- `<strong>` and `<b>` for emphasis and stylistic bold  
- `<em>` and `<i>` for italic text  
- `<sub>` and `<sup>` for subscript and superscript  

Separate each sentence with a line break `<br>`.  

In the end it should look like this:  
![html-multi-element-1-finished](https://img.enkipro.com/2f49d908f9934970665e92af5e4d2743.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<strong>` for important text and `<em>` for emphasized text.  
- Use `<b>` and `<i>` for purely stylistic bold or italic.  
- Use `<sub>` and `<sup>` for subscripts and superscripts in equations or numbers.  
- Separate sentences with `<br>`:  
```html
  First sentence<br>
  Second sentence
```