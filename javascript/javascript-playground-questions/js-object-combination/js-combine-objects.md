---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.
    
    // Type your code here:
    let o1 = { }
    let o2 = { }
    
---

# Combine Objects

---

## Content

> 👩‍💻 Your task is to create a function that **combines two objects and returns a single one**

To solve this, try using the following concepts:
- variable creation (`age = 33`).
- function declaration (`function something(x) { ... }`)

Give it an honest try, and feel free to share your solution!
If you’re stuck, you can always read this footnote[1] or the solutions posted in the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

Start by defining your function with your choice of name. It should take two objects as input.

Inside the function, you can add one object to another using `Object.assign()` or object spread operator `...`.

Here's one way:

```javascript
let o1 = { name: 'enki' };
let o2 = { isFun: true };
let combined = { ...o1, ...o2 };
```

Outside of the function create the two objects.

Call your function with the two objects inside a `console.log` statement.
