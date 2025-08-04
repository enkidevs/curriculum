---
author: Stefan-Stojanovic
tags:
  - introduction
type: normal
category: coding
links:
  - >-
    [MDN docs for
    div](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/div){website}

webSetupCode:
  startingHtml: |
    <!-- 
    Task:
    1. Wrap the ordered list (<ol>) inside an appropriate block-level element.
    2. Add the CSS class "shadowbox" to this element to apply styling.
    -->

    <div class="your-code">
      <ol>
        <li>Buy groceries.</li>
        <li>Make food.</li>
        <li>Eat.</li>
      </ol>
    </div>
  startingCss: |
    .shadowbox {
      font-family: Arial, sans-serif;
      font-size: 1.5em;
      width: 300px;
      border: 5px solid #333;
      box-shadow: 4px 4px 5px #bbb;
      border-radius: 10px;
      padding: 0px 20px;
      background-image: linear-gradient(180deg, #fff, #ddd 40%, #ccc);
    }
  startingJs: |
    // You don't need JavaScript for this exercise

---

# HTML semantics 2

---

## Content

In this exercise, you will use a **block-level element** to structure your HTML properly.  

1. Wrap the `<ol>` element (list) inside a **block-level element** such as `<div>`.  
2. Add the class `shadowbox` to this block-level element to style it.  

In the end it should look like this:  
![html-semantics-2-exercise-finished](https://img.enkipro.com/34a0b23fa910b85e9c5ee420626af365.png)

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]
- `<div>` is a generic block-level element that is great for grouping elements together.  
- Example:
```html
  <div class="shadowbox">
    <ol>
      <li>Item 1</li>
    </ol>
  </div>
```