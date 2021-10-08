---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    // Welcome to the JavaScript coding playground.

    // Example output:
    // The first N primes are:
    // 2, 3, 5, 7, 11, 13, ...

    // Type your code here:
    
---

# Prime Printer

---

## Content

> 👩‍💻 Your task is to create a program that **outputs the first 15 prime numbers.**

> A prime number is a number that is only divisible by 1 and itself.

The first few prime numbers are 2, 3, 5, 7, 11, 13 ...

2 is only divisible by 1 and itself, making it prime. 4 is not prime because it is divisible by 1, 2, and itself.

To solve this, try using the following concepts:
- flow control (`if (age > 30)...`, `for...of`)

> 💡 One way to test if a number is prime is to check if it's divisible by any number from 2 up to (rounded) half of itself. For example, to test if 31 is prime, we check if it's divisible by any number from 2 up to 15.

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!


---

## Footnotes

[1: Hints]

First, create a `for` loop that will range from 2 to 50. 

Inside the loop, add an `if` statement to check if the counter is prime by calling the `isPrime` function and then print its value if the result is true.

The `isPrime` function will perform the primality test mentioned in the insight.

Here's one example of its implementation:

```javascript
function isPrime(n) {
  for (let i = 2; i <= n / 2; i += 1) {
    if (n % i === 0) {
      return false
    }
  }
  return true;
}
```
