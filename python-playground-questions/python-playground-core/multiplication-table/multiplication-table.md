---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Multiplication Table

---

## Content

Can you create a program that will display the multiplication table for any number between 1 and 10 (both included)?

If the input is `5`, the output should look similar to one of these:
```python
# Version 1
1   2   3   4   5
2   4   6   8  10
3   6   9  12  15
4   8  12  16  20
5  10  15  20  25

# Version 2
1       2       3       4       5
2       4       6       8       10
3       6       9       12      15
4       8       12      16      20
5       10      15      20      25

# Version 3
1, 2, 3, 4, 5
2, 4, 6, 8, 10
3, 6, 9, 12, 15
4, 8, 12, 16, 20
5, 10, 15, 20, 25
```

To achieve this, you can use the following concepts:
- variable creation (`age = 25`)
- built-in (`range()`)
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

Start by creating a variable to hold your number.

Next, initiate a `for x in...:` loop to go through every number from 1 to your number + 1.

Inside that loop, initiate a second `for y in...:` loop to go through the same range.

Inside the second loop, add a `print` to output `(x*y), end="/t"` which will give the number and add a tab(4 spaces) after it.

Finally, outside the second loop but inside the first one add a `print()`. This is used to give a new line after each row.