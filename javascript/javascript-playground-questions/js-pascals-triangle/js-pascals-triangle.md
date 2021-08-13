---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.

    // Example output:
    //     1 
    //    1 1
    //   1 2 1
    //  1 3 3 1
    // 1 4 6 4 1 

    // Type your code here:
    
---

# Pascal Triangle

---

## Content

> 👩‍💻 Your task is to write a program that **outputs the Pascal triangle.**

> The Pascal triangle is a triangular array of binomial coefficients.

![pascal-triangle](https://img.enkipro.com/9ca1eb25c5fc393b831db1556dcad889.png)

Here is a gif from Wikipedia that demonstrates how each value is calculated:

![wiki-explanation](https://upload.wikimedia.org/wikipedia/commons/0/0d/PascalTriangleAnimated2.gif)

To solve this, try using the following concepts:
- variable creation (`age = 22`)
- flow control (`for...of:`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

The left-most and right-most values of every row are `1`.

Every line has a number of integers equal to the line number.

The first two rows have only `1`s.

The values between the left and right bound of every row are equal to the sum of values just above them.

Use nested loops.
