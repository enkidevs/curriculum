---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground.
    // Example input:
    // myFunction("Marry had a little lamb");
    // Example output:
    // little

---

# Word Length

---

## Content

Can you define a function that will take a sentence as input? The function should split the sentence into separate words and only output words longer than 4 letters?

Example input/output:
```javascript
// Input
myFunction('Mary had a little lamb')

// Output
little
```

To achieve this, you can use the following concepts:
- flow control (`for...of...`, `if (x > 4)...`)
- array functions (`split()`)
- array property (`length`)
- function declaration (`function something(x) { ... }`)

As a bonus, try combining the array functions `split()` and `filter()` to solve the problem.  

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

Create a function with an input variable. 

> Use (`.split()`).

Use a loop to cycle through every word and a conditional statement to only output words longer that four letters.