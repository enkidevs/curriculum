---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for
    u](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u){website}
  - >-
    [MDN docs for
    mark](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Write 2 sentences using the appropriate elements (<u> and <mark>).
    2. Use <u> for underlining text.
    3. Use <mark> for highlighting text.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      <p>
        The cell is the basic structural, functional, and biological unit of all known living organisms. A cell is the smallest unit of life. Cells are often called the "building blocks of life". The study of cells is called cell biology.
      </p>
      <p>
        The Shawshank Redemption (1994) is the highest rated movie on IMDB.
      </p>
    </div>
  startingCss: |
    /* 
    You can style your sentences here if you'd like.
    Focus on using the correct elements first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML u mark

---

## Content

In this exercise, you will write **2 sentences** using the appropriate elements:  
- `<u>` for underlining text.  
- `<mark>` for highlighting text.  

In the end it should look like this:  
![html-u-mark-finished](https://img.enkipro.com/87a529a94473b6ec0e168f23b4663d32.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<u>` adds underline to the text.  
- `<mark>` highlights the text with a background color.  
- Example:  
```html
  <p>This is <u>underlined</u> and this is <mark>highlighted</mark>.</p>
```