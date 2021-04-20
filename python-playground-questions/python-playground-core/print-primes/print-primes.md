---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Prime Printer

---

## Content

Can you create a program that will print the first 15 prime numbers?

The first 15 primes fall in the range `2`-`50`.

A prime number is a number that is only divisible by 1 and itself.

The first few prime numbers are 2, 3, 5, 7, 11, 13 ...

2 is only divisible by 1 and itself, making it prime. 4 is not prime because it is divisible by 1, 2, and itself.

To achieve this, you can use some of the following concepts:
- loops (`for...in...`)
- built-in function (`range()`)
- flow control (`if (age > 30) ...`)

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

First, create two variables. One will hold the lower (2)while the other holds the upper (50)bond.

Next, create a `for...in` loop that will range from lower to upper + 1. 

Inside the loop, add an `if` statement that checks if each number in the range is greater than 1. 

If it is greater, add another `for...in` loop that will go in the range of `2` and the value from the first `for` loop. 

Inside it, check if the number is divisible by the number in the `for...in` range of the second loop.

Add an else statement that will print the value from the first `for...in` loop.
