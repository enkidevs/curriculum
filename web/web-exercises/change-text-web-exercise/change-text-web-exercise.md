---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <h1 id="title">Welcome!</h1>
      <button id="changeBtn">Change Text</button>
    </div>
  startingCss: |
    /* Task:
    1. Center the text and button.
    2. Make the button visually appealing.
    */

    .your-code {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 50px;
    }

    button {
      padding: 10px 20px;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      background-color: #3498db;
      color: white;
    }
  startingJs: |
    /* Task:
    1. When the button is tapped, change the <h1> text to "Hello, JavaScript!".
    2. Use getElementById to select elements.
    */

    // Write your code below
---

# Change Text with JavaScript

---

## Content

In this exercise, you will:
- Select elements using `getElementById`.
- Update the text content of an element on button tap.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Select elements:

```js
const title = document.getElementById("title");
const button = document.getElementById("changeBtn");
```

- Update text on tap:

```js
button.addEventListener("click", () => {
  title.textContent = "Hello, JavaScript!";
});
```