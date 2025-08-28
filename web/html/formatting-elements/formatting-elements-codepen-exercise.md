---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for global
    attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){documentation}

webSetupCode:
  startingHtml: |
    <div class="directions">
      <p>Please represent each sentence with the appropriate inline element. Next, add the CSS classes (first, second, third, fourth, fifth) from the CSS panel to each inline element.</p>
    </div>

    <div class="your-code">
      <!-- Add your HTML to this text below. -->

      <p>Grass is green.</p>
      <p>Fire is red.</p>
      <p>Eggplants are purple.</p>
      <p>The sky is blue.</p>
      <p>Lemons are yellow.</p>

    </div>
  startingCss: |
    .first{
      color: green;
    }
    .second{
      color: red;
    }
    .third{
      color: purple;
    }
    .fourth {
      color: blue;
    }
    .fifth {
      color: yellow;
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML formatting elements exercise

---

## Content

In this exercise, you will:  
1. Add the **same inline element** to a word in each of the 5 sentences.  
2. Add the **CSS classes** (first, second, third, fourth, fifth) from the CSS panel to each inline element so that each word is styled with a different color.  

In the end it should look like this:  
![html-formatting-elements-finished](https://img.enkipro.com/41c83253d42738101d37587f385f2cfe.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- Choose an **inline element** like `<span>` to wrap a single word without breaking the text flow.  
- Use the `class` attribute to assign the appropriate CSS class:  
  ```html
  <span class="first">green</span>
```
- Remember that each sentence must use a different class (first, second, third, fourth, fifth).

