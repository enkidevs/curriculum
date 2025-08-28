---
author: Stefan-Stojanovic
type: normal
category: coding
webSetupCode:
  startingHtml: |
    <div class="your-code">
      <h1 id="title">Light Mode</h1>
      <button id="toggleBtn">Switch Theme</button>
    </div>
  startingCss: |
    /* Task:
    1. Add styles for light mode and dark mode.
    2. Default to light mode, but switch on button tap.
    */

    .your-code {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-top: 50px;
    }

    body.light {
      background-color: #ffffff;
      color: #222222;
    }

    body.dark {
      background-color: #222222;
      color: #ffffff;
    }

    button {
      margin-top: 20px;
      padding: 10px 20px;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      background-color: #3498db;
      color: white;
    }
  startingJs: |
    /* Task:
    1. Use getElementById to select the button and title.
    2. On button tap, toggle between light and dark modes.
    3. Update the <h1> text depending on the active theme.
    */

    // Write your code below
---

# Toggle Light/Dark Theme

---

## Content

In this exercise, you will:
- Use JavaScript to add and remove CSS classes.
- Toggle between light and dark themes dynamically.
- Update the heading text based on the current theme.

If you’re unsure how, check the hints[1].

---

## Footnotes

[1: Hints]

- Select the elements:

```js
const title = document.getElementById("title");
const toggleBtn = document.getElementById("toggleBtn");
```

- Toggle classes:

```js
toggleBtn.addEventListener("click", () => {
  document.body.classList.toggle("dark");
  document.body.classList.toggle("light");

  title.textContent = document.body.classList.contains("dark")
    ? "Dark Mode"
    : "Light Mode";
});
```

- Default mode:

```js
document.body.classList.add("light");
```