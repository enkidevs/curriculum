---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Harmonic Series

---

## Content

The harmonic series is the divergent infinite series that looks like this:

![harmonic-series](https://img.enkipro.com/86e08401cab9a7841c91077c24e46945.png)

Can you create a function that will sum up the first 15 terms of this series and round them to 5 decimal places?

To achieve this, you can use the following concepts:
- variable creation (`age = 25`)
- built-in (`range()`)
- loops (`for...in...:`)
- function declaration (`def something(x):`)
- built-in (`round`)

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

Start by defining a function.

Inside it, create an empty `sum` variable.

Then, initiate a `for x in` loop to go through every number in the range `1` to `16`.

Inside the loop, update the `sum` variable to equal itself + `1 / i`

Finally, outside the loop, round and return the `sum` variable to 5 decimal places.
