---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # 👋 Welcome to the Python coding playground. 
    # List to use:

    scientists = [
      "Niels Bohr", "Galileo Galilei", 
      "Marie Curie", "Albert Einstein", "Rosalind Franklin", 
      "Katherine Johnson", "Lise Meitner", "Nikola Tesla"
    ]  

---

# Breaking a Loop

---

## Content

Given a list of famous scientist:

```python
scientists = [
  "Niels Bohr",
  "Galileo Galilei", 
  "Marie Curie", 
  "Albert Einstein", 
  "Rosalind Franklin", 
  "Katherine Johnson", 
  "Lise Meitner", 
  "Nikola Tesla"
  ]
```

Can you create a loop that will print out every name from the list until it reaches `Katherine Johnson`, including "`Katherine`"?

To achieve this, you should use the following concepts:
- variable creation (`age = 29`)
- loops (`for x in y:...`)
- flow-altering statements (`break`, `continue`)

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

Use a loop to cycle through and `print` every name. 

When you reach the specified name, `break` out of the loop.
