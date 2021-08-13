---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # 👋 Welcome to the Python coding playground. 
    # Here is the list:
    
    numbers = [1, 3, 5, 7, 9, 10, 8, 6, 4, 2]

    # Type your code here:


---

# Beginning and End Pairs

---

## Content

> 👩‍💻 Using the `numbers` list, your task is to write a program that **print the first and last, second and second to last, and so on**.

Sample list:
```python
numbers = [1, 3, 5, 7, 9, 10, 8, 6, 4, 2]
```

Sample output:
```python
[1, 2]
[3, 4]
[5, 6]
[7, 8]
[9, 10]
```

To solve this, try using the following concepts:
- flow control (`while..`)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

You only need to loop through half of the list.

To get the values in each loop cycle, take the loop counter index from the left and right sides of the list.

For eample, the third element from left and right of `newList` is:

Which looks like this:
```python
newList = [lst[3], lst[-(3+1)]]
```
