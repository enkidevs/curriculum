---
author: Stefan-Stojanovic
tags:
  - css
  - box-model
type: normal
category: coding
links:
  - >-
    [MDN: CSS Box Model](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/the_box_model){website}
  - >-
    [MDN: display property](https://developer.mozilla.org/en-US/docs/Web/CSS/display){website}
webSetupCode:
  startingHtml: |
    <div class="container">
      <div class="box one">Box 1</div>
      <div class="box two">Box 2</div>
      <div class="box three">Box 3</div>
    </div>
  startingCss: |
    .container {
      display: flex;
      gap: 16px;
      background-color: #f0f0f0;
      padding: 20px;
    }

    .box {
      width: 100px;
      height: 100px;
      background-color: lightblue;
      text-align: center;
      line-height: 100px;
    }
  startingJs: |
    // No JavaScript needed for this exercise
---

# CSS Box Model Mastery

---

## Content

In this exercise, you'll learn how the **CSS box model** works by manipulating **padding**, **borders**, **margins**, and **box-sizing**.

You’ll see how these properties affect the overall size and layout of elements. Checkout the hints[1] if you need guidance to complete the task.

---

## Footnotes

[1: Hints]

- Give each box a size:

```css
.box {
  width: 150px;
  height: 80px;
}
```

- Add padding, margin, and border:

```css
.box1 { padding: 10px; margin: 5px; border: 2px solid blue; }
.box2 { padding: 20px; margin: 10px; border: 3px dashed green; }
.box3 { padding: 5px; margin: 15px; border: 4px dotted red; }
```

- Use box-sizing to control size behavior:

```css
.box1 { box-sizing: content-box; }
.box2 { box-sizing: border-box; }
```
