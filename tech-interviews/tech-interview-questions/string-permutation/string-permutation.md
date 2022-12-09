---
author: Stefan-Stojanovic

tags:
  - coding

type: normal

category: coding

setupCode:
  startingPoint: |
    # Welcome to the Python coding playground.
    # Return true if a permutation of the given substring is located inside the given strings.

    # Sample lists to use:
    subStr = 'ao'
    str1 = 'boat'
    str2 = 'broader'
    str3 = 'milk'

    print(has_permutation_in_string(subStr, str1)) 
    # Expected output: True
    print(has_permutation_in_string(subStr, str2)) 
    # Expected output: True
    print(has_permutation_in_string(subStr, str3)) 
    # Expected output: False

    # Type your code here:

---

# String Permutation

---

## Content

> 👩‍💻 Your task is to: **Return true if a permutation of the given substring can be found within any of the given strings.**

Sample variables to use:
```python
subStr = 'ao'
str1 = 'boat'
str2 = 'broader'
str3 = 'milk'

print(has_permutation_in_string(subStr, str1)) 
# Expected output: True
print(has_permutation_in_string(subStr, str2)) 
# Expected output: True
print(has_permutation_in_string(subStr, str3)) 
# Expected output: False
```

To solve this, try using the following concepts:
- function definition (`def x(): ...`, ...)
- flow control (`if (age > 30) ...`, `for x in y...`)
- built-in function (`len()`, ...)

Give it an honest try, and feel free to share your solution!

If you’re stuck, you can always read this footnote[1] or review the comments section.

😇 Help us build an uplifting community by leaving encouraging comments or by upvoting your favorite ones!

> 💡 Take a look at [how you can format text using markdown](https://www.enki.com/glossary/general/markdown-formatting).

> 💡 The guidelines above are just suggestions. Feel free to include other concepts in your solution as you see fit. The implementation is up to you.

> 🤓 Happy learning! Open the playground and start coding!

---

## Footnotes

[1: Hints]

You can sort the strings and substrings, then check if the substring is located inside the strings.