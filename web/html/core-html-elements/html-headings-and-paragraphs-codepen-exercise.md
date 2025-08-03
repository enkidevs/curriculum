---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [Elements on
    MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Heading_Elements){documentation}

webSetupCode:
  startingHtml: |
    <div class="directions">
      <p>Please create all 6 heading sizes (h1-h6) with a paragraph after each. The headings should be named "Heading 1, Heading 2,..., Heading 6". Next, style each paragraph with a different color (blue, green, pink, orange, teal, and magenta, respectively).</p>
    </div>

    <div class="your-code">
      <!-- Add your HTML to this text below. -->

      Delete this text and add your HTML code.

    </div>
  startingCss: |
    /* You can add CSS here if you'd like */

  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML headings paragraphs

---

## Content

In this exercise, you will create:  
- **6 headings**, each labeled "Heading 1" through "Heading 6".  
- A **paragraph** after each heading, each with a different color.  

The colors for the paragraphs should be:
- Blue
- Green
- Pink
- Orange
- Teal
- Magenta  

In the end it should look like this:  
![headings-paragraphs-finished](https://img.enkipro.com/054feb3c26aa068193b4ef3a60e599cc.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Use `<h1>` through `<h6>` for headings, in descending order.  
- Use `<p>` for paragraphs.  
- You can set colors using the `style` attribute:  
  ```html
  <p style="color: blue;">This is a blue paragraph.</p>
