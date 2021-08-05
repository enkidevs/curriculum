---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # 👋 Welcome to the Python coding playground. 
    # Tuple in question:

    myTuple = (
      "Stefan", "Mark", "Joane",
      "Steven", "Natasha", "Mark", 
      "Steven", "Mark", "Natasha"
    )

    # Type your code here:
    
    
---

# Remove Duplicate Values From a Tuple

---

## Content

> 👩‍💻 Your task is to define a function that **removes all duplicate values from a tuple and returns the result.**

Example tuple to use:
```python
myTuple = (
  "Stefan", "Mark", "Joane", 
  "Steven", "Natasha", "Mark", 
  "Steven", "Mark", "Natasha"
)
```

To solve this, try using the following concepts:
- function definition (`def something(x):`)
- flow control (`if(x > 1)`, `for...in...:`)

Give it an honest try, and feel free to share your solution!

You can always read this footnote[1] or the solutions posted in the comments section if you're stuck.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

Start by defining and naming your function.

Ex:
```python
def duplicateRemoval(t):
```

You can convert the `tuple` to a `list`, use the `.count()` `list` method to see which value appears two or more times, then remove the duplicates using `.remove()`.

Don't forget to convert the `list` back to a `tuple` before returning it.