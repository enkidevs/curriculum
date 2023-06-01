---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground. 
    # Example output:
    # The first N primes are:
    # 2, 3, 5, 7, 11, 13, ...

    # Type your code here:

---

# Prime Printer

---

## Content

> 👩‍💻 Your task is to create a program that **outputs the first 15 prime numbers.**

> A prime number is a number that is only divisible by 1 and itself.

The first 15 primes fall in the range `2`-`50`. Some of them are 2, 3, 5, 7, 11, 13, and so on.

2 is only divisible by 1 and itself, making it prime. 4 is not prime because it is divisible by 1, 2, and itself.

To solve this, try using the following concepts:
- loops (`for...in...`)
- built-in function (`range()`)
- flow control (`if (age > 30) ...`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Create a `for x in...` loop that will range from 2 to 50. 

Then use a conditional statement to check if a number is larger than 1 (all primes are). 

Inside the conditional use a second loop in the range of 2 to `x`.

If `x` divided by the second loop variable is equal to 0 break out of the loop, otherwise output the prime.
