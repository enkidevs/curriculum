---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Remove Odd Numbers From a List

---

## Content

Given the list:
```python
myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

Can you create a program that will traverse through each number in the given list, remove the number if it is odd, and save the new list with only even numbers?

To achieve this, you can use the following concepts:
- loops (`for...in...`)
- conditional statements (`if (x>1)...`)
- built-in method (`remove()`)

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

Start by creating the list with numbers.

Then initiate a loop to go through every item in the list.

Inside the loop, add an `if` statement to check if the current number is divisible by 2 using the Modulo operator. If the output is not 0, remove the current item.

Finally, print the even-numbered list.v