---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # 👋 Welcome to the Python coding playground. 
    # Example Input:
    # 3
    # Example Output:
    # It is Thursday

---

# Day of the Week

---

## Content

Can you create a function that will take a number as input. If one of the numbers is between `0-6` output the corresponding day of the week. `0` being `Monday`. If the input is not a number, output a message like `"Try Again."`

To achieve this, you can use the following concepts:
- function definition (`def something(x):`)
- flow control (`if (x > 1):`)
- dictionary mapping (`week = {1: "Monday"...}`)

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

One way to solve this is by using dictionary mapping.

Create a function with an input argument.

Add all possible arguments for a week as key value pairs to a dictionary. Also add a default argument in case the input is not within the dictionary.

Then call the function with a number argument.