---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Squared Dictionary Keys

---

## Content

Can you create a dictionary whose keys go from 1 to 10 (bounds included) and each value for the corresponding key is equal to the square of the key?

Example solution:
```python
{
  1: 1, 
  2: 4, 
  3: 9, 
  4: 16, 
  5: 25, 
  6: 36, 
  7: 49, 
  8: 64, 
  9: 81, 
  10: 100
}
```

To achieve this, you can use the following concepts:
- variable creation (`age = 29`)
- loops (`for...in...:`)

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

Start by creating an empty dictionary.

Then initiate a for loop to go through every element in the range of `1` to `11`.

Inside the loop, assign each value the squared value of the key.

Finally, outside of the loop, print the resulting dictionary.