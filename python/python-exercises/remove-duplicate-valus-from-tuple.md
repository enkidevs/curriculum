---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Test Yourself

---

## Content

Given a tuple with repeating words, can you define a function that will take a tuple as input, remove the duplicates, and output the result?


Tuple:
```python
myTuple = ("Stefan", "Mark", "Joane","Steven", "Natasha", "Mark", "Steven", "Mark", "Natasha")
```

To achieve this, you can use the following concepts:
- function definition (`def ...:`)
- loops (`for...in...:`)
- flow control (`if(x > 1)`)

If you're not sure what to do, check out this footnote[1].

When you're ready, open the playground and write your code. When you're finished, press the submit button and your code will become a comment on the question. This way, everyone can review your code and you can review everyone else's to see other people's approach to solving this question. 

If you don't want to participate, you can always check the comment section to see what the other users come up with.

> 💡 Before you submit your program, take a look at [how you can format your comments](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit, the implementation is up to you.

---

## Footnotes

[1: Hints]

Start by defining and naming your function.

Ex:
```python
def duplicateRemoval(t):
```

Inside the function first convert the input tuple into a list. (`list(variable)`)

Then initate a `for...in` loop to cycle through every word.

Insie the loop, add an `if` to check the count of every word (you can use the built-in `.count()`).

If the count is greater than or equal to `2`, use the `.remove()` method to remove the duplicate.

Finally convert the `list` back to a `tuple` using `tuple(variable)` and return the result.

Outside of the function, call the function with the provided `myTuple`.
