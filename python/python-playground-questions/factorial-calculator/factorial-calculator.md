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
    # 5! is equal to 120

    # Type your code here:
      
---

# Factorial Calculator

---

## Content

> 👩‍💻 Your task is to create a program that **calculates and outputs the factorial of a number**.

> A factorial of the number 5, written as `5!`, would be calculated as 5 x 4 x 3 x 2 x 1.

Example output:

```plain-text
5! is equal to 120
```

For the sake of learning, try not to use the built-in `math` modules' `factorial()` method.

To solve this, try using the following concepts:
- variable creation (`age = 18...`)
- flow control (`for...in`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Start by creating two variables, for example, `number` and `result`.

One will store the inputted number, and the other will start from 1 and store the final number.

With a `for...in` loop, you can range from the first to the last number.

Inside the loop, multiply the `result` by each number in the loop.

Example print:
```python
print ("The factorial of {0} is {1} ".format(number,factorial))
```
Output:
```plain-text
The factorial of 5 is 120 
```
