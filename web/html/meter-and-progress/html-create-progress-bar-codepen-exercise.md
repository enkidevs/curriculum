---
author: Stefan-Stojanovic
type: normal
category: coding
links:
  - >-
    [MDN docs for global
    attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}
  - >-
    [MDN docs for progress
    bar](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/progress){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Create a <progress> element representing a file download.
    2. The progress bar should:
       - Have a range from 0 to 100.
       - Have its current value set to 35 (35%).
    -->

    <div class="your-code">
      <!-- Write your HTML here -->
    </div>
  startingCss: |
    /* 
    You can style the progress bar or add labels here if you'd like.
    Focus on correct HTML first.
    */
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML progress bar

---

## Content

In this exercise, you will create a simple **progress bar** that represents a file download.  

1. Create a `<progress>` element.  
2. Set its range from **0 to 100**.  
3. Set the current value to **35** (35%).  

In the end it should look like this:  
![html-progress-bar-exercise-finished](https://img.enkipro.com/c334164a67b19dd8d10d7af669173b97.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- The `<progress>` element is used to represent the progress of a task.  
- Example:  
```html
  <label for="download">Downloading:</label>
  <progress id="download" max="100" value="35"></progress> 35%
```