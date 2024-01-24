---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the Javascript coding playground.
    // Return true if the characters from the given letters string can be used to construct any of the word strings; otherwise return false. You can use each letter only once.

    // Sample strings to use:
    let letters = 'aaabnn'
    let word1 = 'banana'
    let word2 = 'apple'
    let word3 = 'ban'
    let word4 = 'bananas'

    // Type your code here:

    console.log(can_construct_words(letters, word1)) 
    // True
    console.log(can_construct_words(letters, word2)) 
    // False
    console.log(can_construct_words(letters, word3)) 
    // True
    console.log(can_construct_words(letters, word4)) 
    // False


---

# String Comparison

---

## Content

> 👩‍💻 Your task is to: **Check if the characters in the `letters` string can be used to construct any of the `word` strings without repeating any letters. Return `true` if any of the `word` strings can be constructed, and `false` otherwise.**

Sample strings to use:
```javascript
let letters = 'aaabnn'
let word1 = 'banana'
let word2 = 'apple'
let word3 = 'ban'
let word4 = 'bananas'

console.log(can_construct_words(letters, word1)) 
// True
console.log(can_construct_words(letters, word2)) 
// False
console.log(can_construct_words(letters, word3)) 
// True
console.log(can_construct_words(letters, word4)) 
// False
```

---

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!
