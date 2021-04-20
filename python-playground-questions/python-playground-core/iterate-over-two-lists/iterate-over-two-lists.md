---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Iterate Over two Lists

---

## Content

Given two lists:
```python
name = ['Stefan', 'Michael', 'Rebekah', "Natasha"]
lastName = ['Stojanovic', 'Stevens', 'Mikaelson', "Romanoff"]
```

Can you write a program that will iterate over both lists at the same time and output the corresponding values?

Example output:
```plain-text
Stefan Stojanovic
Michael Stevens
....
```

To achieve this, you can use the following concepts:
- loops (`for...in`)
- built-in methods (`zip`)

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

Start by creating the two lists.

Then initiate a `for...in` loop through the two lists using the built-in `zip` method.

Finally, inside the loop, initiate a print to output each pair.