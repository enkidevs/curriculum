---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the Javascript coding playground.
    // Return true if a permutation of the given substring is located inside the given strings.

    // Sample lists to use:
    let subStr = 'ao'
    let str1 = 'boat'
    let str2 = 'broader'
    let str3 = 'milk'

    // Type your code here:

    console.log(has_permutation_in_string(subStr, str1)) 
    // True
    console.log(has_permutation_in_string(subStr, str2)) 
    // True
    console.log(has_permutation_in_string(subStr, str3)) 
    // False


---

# String Permutation

---

## Content

> 👩‍💻 Your task is to: **Return `true` if a permutation of the given substring can be found within any of the given strings.**

Sample variables to use:
```javascript
let subStr = 'ao'
let str1 = 'boat'
let str2 = 'broader'
let str3 = 'milk'

console.log(has_permutation_in_string(subStr, str1)) 
// True
console.log(has_permutation_in_string(subStr, str2)) 
// True
console.log(has_permutation_in_string(subStr, str3)) 
// False
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

You can sort the strings and substrings, then check if the substring is located inside the strings.