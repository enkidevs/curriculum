---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Smallest List Element

---

## Content

Can you create a program that will output the smallest and largest number from a given list?

Here is the list:
```python
myList = [33, 99, 41, 73, 2, 21, 1, 18]
```

To achieve this, you can use some of the following concepts:
- loops (`for...in...`)
- built-in function (`len()`)
- flow control (`if (age > 30) ...`)

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

Start by creating the list.

Next, create another variable and assign the first element of the list to it.

Then initiate a `for...in` loop to go until the length of the list. (You can use `len()` to get the list length)

Inside the loop add an `if` statement that checks if the current number is less than the previously created minimum one.

If the `if` is `True`, change the min value to the current list value.

Lastly, after the loop, print the lowest value.