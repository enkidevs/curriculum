---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Word Length

---

## Content

Can you define a function that will take a sentence as input? The function should split the sentence into separate words and only output words longer than 4 letters?

Example input/output:
```python
# Input
myFunction('Mary had a little lamb')

# Output:
little
```

To achieve this, you can use the following concepts:
- flow control (`for...in...`, `if (x > 4)...`)
- built-in functions (`len()`, `split()`)
- function creation (`def ... :`)

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

Start by defining a function with an input variable.

Next, split the input variable using (`.split()`).

Then initiate a `for...in...` loop to cycle through the split text.

Inside the loop, add a flow control `if` statement that will check if the word is larger than 4. (use `len()`)

Lastly, print the word inside the `if` statement.
