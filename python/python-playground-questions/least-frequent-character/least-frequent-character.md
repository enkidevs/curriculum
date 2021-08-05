---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # 👋 Welcome to the Python coding playground. 
    # Example output:
    # The character z appears only 2 times

    # Type your code here:
      
---

# Least Frequent Character

---

## Content

> 👩‍💻 Your task is to write a program that:
> - **takes a string as input**
> - **determines which characters appear the least**
> - **print the least occurring character along with its number of occurrences**

To solve this, try using the following concepts:
- flow control (`for...in`, `if (age > 1)...`)
- variable creation (`age = 33`)

Give it an honest try, and feel free to share your solution!

You can always read this footnote[1] or the solutions posted in the comments section if you're stuck.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Use a loop to cycle through every character and save it in an empty dictionary. 

Within the loop you can check if the character already exists, if it does, increase its count and if it doesn't, add it.

Here's one example of a dictionary:
```python
{
  a: 5,
  b: 3,
  # ...
}
```

After the loop is made, output the least occurring value from the dictionary.

Here's one way you can get the least occurring character from a dictionary: 

```python
min(dict, key = dict.get))
```
