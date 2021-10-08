---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.

    // Array in question:
    let names = [
      "Stefan", "Mark", "Joane", 
      "Steven", "Natasha", "Mark", 
      "Steven", "Mark", "Natasha"
    ];

    // Type your code here:
    
---

# Remove Duplicate From Array

---

## Content

> 👩‍💻 Your task is to define a function that:
> - **takes an array as input**
> - **removes duplicate values**
> - **returns the new array**

Example array to use:
```javascript
let names = [
  "Stefan", "Mark", "Joane", 
  "Steven", "Natasha", "Mark", 
  "Steven", "Mark", "Natasha"
];
```

To solve this, try using the following concepts:
- function declaration (`function something(x) { ... }`)
- flow control (`if (x > 1)`, `for...of`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

Start by defining and naming your function.

Ex:
```javascript
function removeDups(t) {
  // ...
}
```

Use an empty `array` to hold all unique values. Use a `for` loop to cycle through the given `array` and only if the word is not in the empty `array`, add it.

After the loop is done, return the resulting array.

Don't forget to call the function with the provided `myArray`.
