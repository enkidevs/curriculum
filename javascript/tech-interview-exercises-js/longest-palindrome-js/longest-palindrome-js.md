---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the Javascript coding playground.
    // Find the longest palindrome from the given letters string.

    // Sample program:
    let letters = "abbbbcceeezdda"
    find_longest_palindrome(letters)
    // "bbbb"

    // Type your code here:

---

# Longest Palindrome

---

## Content

> 👩‍💻 Your task is to: **Find the longest palindrome from the given `letters` string.**

Sample program:
```javascript
let letters = "abbbbcceeezdda"
find_longest_palindrome(letters)

// "bbbb"
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

The time complexity of this task is *O(N)* where *N* is the length of our `letters` string.

The Space complexity is *O(1)* as *s* is a fixed size of the alphabet.

A palindrome is a word or phrase that reads the same forwards and backwards. I.e. **civic**, **level**, **madam**, and so on...

In an even palindrome, each letter has an equal partner on the opposite side.

In an odd palindrome, there is a single non-partnered letter in the middle of the pallindrome.

If each letter occurs X times, we know that x // 2 * 2 is the number of letters that can be partnered.
