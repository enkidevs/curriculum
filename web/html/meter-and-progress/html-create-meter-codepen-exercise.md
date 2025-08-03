---
author: Stefan-Stojanovic
tags:
  - introduction
type: exercise
category: coding
links:
  - >-
    [MDN docs for global
    attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}
  - >-
    [MDN docs for
    meter](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meter){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a <meter> element representing the usage of the Local Disk (C:) drive.
    2. The meter should:
       - Have a range from 0 to 128.
       - Have its current value set to 78.
       - Display "61% full" (the text can be outside the meter).
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style the meter or label here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML create meter

---

## Content

In this exercise, you will create a simple **meter** element that represents disk space usage.  

1. Create a `<meter>` element.  
2. Set its range from **0 to 128**.  
3. Set the current value to **78**.  
4. Add a label or text indicating:  
  - Local Disk (C:) 61% full  

In the end it should look like this:  
![html-create-meter-exercise-finished](https://img.enkipro.com/6c31d5fdbe4b842ff0d93f4928831a16.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- The `<meter>` element is used to represent a scalar measurement within a known range.  
- Example:  
```html
  <label for="disk">Local Disk (C:)</label>
  <meter id="disk" min="0" max="128" value="78"></meter> 61% full
```