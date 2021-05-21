---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.
    // Array in question:
    
    let names = ["Stefan", "Mark", "Joane","Steven", "Natasha", "Mark", "Steven", "Mark", "Natasha"];
    
---

# Remove Duplicate From Array

---

## Content

Given an array with repeating words, can you define a function that will take such array as input and return it without any duplicates?

```javascript
let names = ["Stefan", "Mark", "Joane", "Steven", "Natasha", "Mark", "Steven", "Mark", "Natasha"];
```

To achieve this, you can use the following concepts:
- function definition (`function Something()...`)
- flow control (`if (x > 1)`, `for...of`)

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1]. 

When you're finished, feel free to share your solution with the community, join in on discussions and upvote solutions from your fellow learners!

Remember, learning is more effective when we do it with others.

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