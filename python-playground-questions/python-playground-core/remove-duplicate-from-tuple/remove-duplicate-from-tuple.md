---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Remove Duplicate Values From a Tuple

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

Start by defining and naming your function.

Ex:
```python
def duplicateRemoval(t):
```

Inside the function first, convert the input tuple into a list. (`list(variable)`)

Then initiate a `for...in` loop to cycle through every word.

Inside the loop, add an `if` to check the count of every word (you can use the built-in `.count()`).

If the count is greater than or equal to `2`, use the `.remove()` method to remove the duplicate.

Finally, convert the `list` back to a `tuple` using `tuple(variable)` and return the result.

Outside of the function, call the function with the provided `myTuple`.