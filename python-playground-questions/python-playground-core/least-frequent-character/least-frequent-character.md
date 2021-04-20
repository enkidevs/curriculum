---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Least Frequent Character

---

## Content

Can you write the least frequent character program? It should take a string as input and determine which characters appear the least. 

To achieve this, you can use the following concepts:
- flow control (`for...in...`,`if (age > 1)...`)
- variable creation (`age = 33`)

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

First, create an empty dictionary.

Next, initiate a `for...in` loop to iterate through every character.

Inside the loop, add an `if` statement to check if the current character is in the dictionary.

If it is, increase the count by 1. If it is not, add it to the dictionary with the initial value of 1.

After the loop is made, add a print statement to output the least occurring value from the dictionary.

Here's one way you can get the least occurring character from a dictionary: 

```python
min(dict, key = dict.get))
```
