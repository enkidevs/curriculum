---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.
    
    // Object to sort:
    let obj = {
      "first": [7, 1, 5, 3],
      "second": [4, 8, 2, 6],
      "third": [8, 1, 19, 13]
    };

    // Type your code here:


---

# Sort Arrays in an Object

---

## Content

> 👩‍💻 Using the `numberedArrays` object, your task is to create a program that **sorts the values in each array in ascending order and outputs the resulting object.**

Example object:

```javascript
let numberedArrays = {
  'first': [7, 1, 5, 3],
  'second': [4, 8, 2, 6],
  'third': [8, 1, 19, 13]
};
```

To solve this, try using the following concepts:
- Array method (`sort()`)
- flow control (`for...of:`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or the solutions posted in the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Start by creating the object.

Use a `for...of` loop to go through the object.

Next, inside the loop, sort the current values of the object arrays:

`obj[key].sort()`

Finally, outside of the loop, add a print to output the sorted result.
