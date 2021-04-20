---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

---

# Beginning and End Pairs

---

## Content

Given the list:

```python
myList = [1, 3, 5, 7, 9, 10, 8, 6, 4, 2]
```

Can you write a program that will print the first and last, second and second to last, and so on?

The output should look like this:
```python
[1, 2]
[3, 4]
[5, 6]
[7, 8]
[9, 10]
```

To achieve this, you can use the following concepts:
- first two terms of the sequence are `0` and `1`.
- flow control (`while..`)

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

Then, initiate a `for x in..` loop to go from the `length of the list +1 // 2`

Inside the loop, create a `newList` and set it to equal the value of the current position (`lst[x]`), and the value of the last position (`lst[-(i+1)`).

Which looks like this:
```python
newList = [lst[i], lst[-(i+1)]]
```

Finally, inside the loop, print the `newList`.