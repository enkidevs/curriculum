---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.
    
    // Arrays in question:
    let first = [1, 3, 5];
    let second = [2, 4, 6];

    // Type your code here:

---

# Sum and Product of two Arrays

---

## Content

> 👩‍💻 Your task is to define a function that:
> - **takes two arrays as input**
> - **sums up the values in each array**
> - **multiplies the summed values**
> - **outputs the result**

Example arrays:
```javascript
let first = [1, 3, 5];

let second = [2, 4, 6];
```

The result would be (1 + 3 + 5) * (2 + 4 + 6) = 108

To solve this, try using the following concepts:
- function declaration (`function something(x) { ... }`)
- variable creation (`age = 30`)
- arithmetic operators (`+`, `*`)

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
function sumAndProduct(a, b) {
  // solutuon goes here
}
```

Use two variables to hold the sum.

To get a sum of an array you can use this function:

```javascript
function sum(arr) {
 return arr.reduce((a, b) => a + b);
} 
```

Call the function with the arrays and output the result.
