---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // 👋 Welcome to the JavaScript coding playground. 
    // Create a function that tests if a string is a pallindrome.
    
    // If you can't think of any strings, try these out:
    let palindrome = "Was it a car or a cat I saw"
    let nonPalindrome = "Hey how are you"
    
    // Type your code here:

---

# Is it a Palindrome?

---

## Content

> 👩‍💻 Your task is to: **create a function that tests if a string is a palindrome**.
>
> You should test the function on both a palindrome and a non-palindrome to confirm it works.

If you can't think of any strings, try these out:
```javascript
let palindrome = "Was it a car or a cat I saw"
let nonPalindrome = "Hey how are you"
```

To achieve this, you can use the following concepts:
- string methods (`.split()`)
- control flow (`if x > 1`, `for`)
- function declaration (`function something(x) { ... }`)

Learning is best when we give it an honest try. Even if we make a mistake, we'll remember it and do better next time.

That being said, if you're not sure how to get started, check out this footnote[1]. 

When you're finished, feel free to share your solution with the community, join in on discussions, and upvote solutions from your fellow learners!

Remember, learning is more effective when we do it with others.

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Your loop only needs to go up to half the `string` and check if the first character equals the last, the second character equals second to last, and so on.
