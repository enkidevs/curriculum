---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the Javascript coding playground.
    // Create a function that returns the index of the given target value from a sorted numbers list. Your algorithm should use O(log n) runtime complexity.

    // Sample input list and target to use:
    let numbers = [-5, -3, 1, 6, 8, 11]
    let target = 6

    // Sample output:
    // The target value is on index 3
    
    // Type your code here:

---

# Binary Search

---

## Content

> 👩‍💻 Your task is to: **Create a function that returns the index of the given `target` value from a sorted `numbers` list. Your algorithm should use `O(log n)` runtime complexity.**

For example, if the input list is:
```javascript
let numbers = [-5, -3, 1, 6, 8, 11]
``` 

and the target value is:
```javascript
let target = 6
```

the function should return the index of the target value inside the input list:
```plain-text
3 
``` 

---

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Since the input list is sorted, you can use a binary search algorithm to find the target value in the list. This algorithm has a runtime complexity of `O(log n)`, which means it can find the target value in a list of `n` elements in a time that grows logarithmically with the size of the input.

In a binary search, you start by comparing the target value to the middle element of the list. If the target value is smaller than the middle element, you can discard the second half of the list, because the target value cannot be in that half (since the list is sorted). Otherwise, you can discard the first half of the list.

You then repeat this process on the remaining half of the list, until you either find the target value or determine that it does not exist in the list.