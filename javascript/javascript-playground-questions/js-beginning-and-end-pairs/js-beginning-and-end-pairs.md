---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.

    // Here is the Array:
    let numbers = [1, 3, 5, 7, 9, 10, 8, 6, 4, 2];

    // Type your code here:

---

# Beginning and End Pairs

---

## Content

> 👩‍💻 Using the `numbers` array, your task is to write a program that **outputs the first and last value, second and second to last, and so on**.


Sample array:
```javascript
let numbers = [1, 3, 5, 7, 9, 10, 8, 6, 4, 2];
```

Sample output:
```javascript
[1, 2]
[3, 4]
[5, 6]
[7, 8]
[9, 10]
```

To solve this, try using the following concepts:
- flow control (`while..`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or the solutions posted in the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

You only need to loop through half of the array.

To get the values in each loop cycle, take the loop counter index from the left and right sides of the array.

For example, the 4th element from left and right of `myArray` are:
```javascript
let left = myArray[3];
let right = myArray[myArray.length - 1 - 3];
```
