---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
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
    1. Write the 3 sentences using the appropriate elements (<s>, <del>, <ins>).
    2. The first sentence should cross out outdated content and show the updated value.
    3. The second sentence should be marked for deletion.
    4. The third sentence should be marked as the replacement text.
    5. Use <br> to separate the sentences.
    -->

    <div class="your-code">
      <!-- Write your HTML here -->

      New lower price, only 39.99$ 25.99$!<br>
      Current best world record is 14 seconds<br>
      Current best world record is 13 seconds
    </div>
  startingCss: |
    /* 
    You can style your text here if you'd like.
    Focus on using the correct elements first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML s del ins

---

## Content

In this exercise, you will write **3 sentences** using the appropriate elements:  
- `<s>` for content that is no longer accurate or relevant  
- `<del>` for deleted content  
- `<ins>` for inserted (replacement) content  

In the end it should look like this:  
![html-s-del-ins-finished](https://img.enkipro.com/5b785872d73c754d290377e67d6a7420.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<s>` is for content that’s outdated or no longer relevant but shouldn’t be removed from the document.  
- `<del>` indicates content that has been deleted.  
- `<ins>` is used to mark newly added content.  
- Example:  
```html
  <p>New lower price: <s>$39.99</s> <ins>$25.99</ins></p>
```