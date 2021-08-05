---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.
    // Create a function that joins two arrays and sorts the resulting array in ascending order

    // These are the arrays:
    let oddNumbers = [101, 23, 11, 8, 3, 83, 1];
    let evenNumbers = [12, 0, 37, 91, 99, 44, 76];

    // Type your code here:

---

# Adding & Sorting Two Arrays

---

## Content

> 👩‍💻 Your task is to: **create a function that joins two arrays and sorts the resulting array in ascending order**.

Use these two arrays:
```javascript
let oddNumbers = [101, 23, 11, 37, 3, 83, 1];
let evenNumbers = [12, 0, 8, 92, 98, 44, 76];
```

To solve this, try using the following concepts:
- array functions (`concat`, `sort`, ...)
- flow control (`if (age > 30) ...`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or the solutions posted in the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

You can concatenate the two arrays into a third one and then sort them.

> 💡 The `sort` method by default compares values as strings. This means that `101` comes before `2`. To fix this, pass in your own comparison function that returns the difference between the given numbers. 

Don't forget to print the resulting array.
