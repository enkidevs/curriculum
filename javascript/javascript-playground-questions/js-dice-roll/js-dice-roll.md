---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.
    // Create a rollDice function
    import Math.random;
    // Type your code here:

---

# Dice Roll

---

## Content

> 👩‍💻 Your task is to **create a function that operates like a dice roll using the `Math.random` module.**

To solve this, try using the following concepts:
- function declaration (`function something(x) { ... }`)

Give it an honest try, and feel free to share your solution!

You can always read this footnote[1] or the solutions posted in the comments section if you're stuck.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

`Math.random` returns a number between 0 and 1.

To make that number be between 1 and 6, we can use the following logic:

```js
let result = Math.floor(Math.random() * 6) + 1;
```
