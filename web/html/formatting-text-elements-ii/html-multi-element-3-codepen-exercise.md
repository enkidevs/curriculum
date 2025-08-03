---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for
    time](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/time){website}
  - >-
    [MDN docs for
    wbr](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/wbr){website}
  - >-
    [MDN docs for
    small](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/small){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Make the first sentence small using the <small> element.
    2. Represent the date in the second sentence using the <time> element in a machine-readable format.
    3. Add a line break opportunity using the <wbr> element in the URL in the third sentence.
    4. Separate each sentence with a <br>.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style your sentences here if you'd like.
    Focus on using the correct elements first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML multi element 3

---

## Content

In this exercise, you will add an appropriate element to each sentence:  
1. Make the first sentence small using `<small>`.  
2. Represent the date in the second sentence in a machine-readable format using `<time>`.  
3. Add a line break opportunity using `<wbr>` in the URL in the third sentence.  

In the end it should look like this:  
![html-multi-element-3-finished](https://img.enkipro.com/4c20743dc017a9e94209caed475b19d6.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<small>` makes text smaller and less prominent.  
- `<time>` should include a `datetime` attribute for the machine-readable date:  
```html
  <time datetime="2025-08-03">August 3, 2025</time>
```
- `<wbr>` adds a word break opportunity in long strings (like URLs).
