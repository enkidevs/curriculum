---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Iterate over Dictionary Values

---

## Content

Given a dictionary:

```python
myDict = {
  'name': 'Stefan', 
  'surname': 'Stojanovic', 
  'age': 27, 
  'country': 'Serbia'
}
```

Can you write a program that iterates over each element and prints them out?

To achieve this, you can use the following concepts:
- variable creation `person ={'name':'Stefan','age'...}`
- loops (`for...in`)
- built-in methods(`.items()`, `get()`)

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

Start by creating the dictionary.

Next, initiate a `for` loop that will go through each key-value pair of the `dict`.

Example:
```python
for x, y in dictionary.items():
```

Lastly, inside the loop, print each pair.