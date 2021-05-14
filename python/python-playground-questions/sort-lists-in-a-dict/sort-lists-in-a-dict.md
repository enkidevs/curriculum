---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: '# 👋 Welcome to the Python coding playground. \n. # List dictionary to sort: \n dictList = { \n  "first": [7, 1, 5, 3], \n  "second": [4, 8, 2, 6], \n  "third": [8, 1, 19, 13] \n} \n \n'

---

# Sort Lists in a Dictionary

---

## Content

Given a `dictionary` with three `list`s:

```python
dictList = {
  'first': [7, 1, 5, 3],
  'second': [4, 8, 2, 6],
  'third': [8, 1, 19, 13]
}
```

Can you sort the values in each list, alphabetically?

To achieve this, you can use the following concepts:
- first two terms of the sequence are `0` and `1`.
- flow control (`while..`)

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

Start by creating the `dict`.

Then initiate a `for...in` loop to go through each key-value pair for each `dict` item.

Inside the loop, create a new dictionary and assign it the current key and the sorted values for that key.

Finally, add a print to output each key-pair after sort.