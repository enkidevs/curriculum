---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground. 
    # Dictionary list to sort:

    dictList = {
      'first': [7, 1, 5, 3],
      'second': [4, 8, 2, 6],
      'third': [8, 1, 19, 13]
    }

    # Type your code here:

    
---

# Sort Lists in a Dictionary

---

## Content

> 👩‍💻 Using the `dictList` dictionary, your task is to create a program that **sorts the values in each list in ascending order and prints the resulting dictionary**.

Example `dictionary` with three `list`s:

```python
dictList = {
  'first': [7, 1, 5, 3],
  'second': [4, 8, 2, 6],
  'third': [8, 1, 19, 13]
}
```

To solve this, try using the following concepts:
- first two terms of the sequence are `0` and `1`.
- flow control (`while..`)

Give it an honest try, and feel free to share your solution!

If you're stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Use a `for...in` loop to go through each key-value pair for each `dict` item.

Inside the loop, create a new dictionary and assign it the current key and the sorted values for that key.

Finally, add a `print` to output each key-pair after sort.