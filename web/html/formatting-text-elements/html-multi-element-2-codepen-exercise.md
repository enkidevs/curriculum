---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    u](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/u){website}
  - >-
    [MDN docs for
    mark](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/mark){website}
  - >-
    [MDN docs for
    s](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/s){website}
  - >-
    [MDN docs for
    ins](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/ins){website}
  - >-
    [MDN docs for
    del](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/del){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Write the sentences using the appropriate elements (<u>, <mark>, <s>, <ins>, <del>).
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

# HTML multi element 2

---

## Content

In this exercise, you will write **multiple sentences** using the appropriate elements:  
- `<u>` and `<mark>` for underline and highlighting  
- `<s>` and `<del>` for strikethrough/deleted text  
- `<ins>` for inserted text  

Separate each sentence with a line break `<br>`.  

In the end it should look like this:  
![html-multi-element-2-finished](https://img.enkipro.com/32fd5e4cd4d3ab313ca2307e9df3ebef.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<u>` is used for underline and `<mark>` for highlighting.  
- `<s>` and `<del>` indicate text that is no longer relevant or removed.  
- `<ins>` shows newly inserted content.  
- Separate sentences with `<br>`:  
```html
  Sentence one<br>
  Sentence two
```