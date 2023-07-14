---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python
    slice()](https://www.programiz.com/python-programming/methods/built-in/slice){website}

---

# The slice Function


---

## Content

Think of Functional Programming like a cook using recipes: each recipe (function) is self-contained and can be used in multiple meals (programs). 

We're going to explore some of Python's 'recipes' like `slice`, `reverse`, and `zip`, to show you the beauty of the Functional Programming kitchen!

### Slice

`slice` creates index ranges that we can use to extract components from lists and strings:

```python
ourString = 'learning-python'

# Slice up to the 8th character
sObject = slice(8)
print(ourString[sObject])
# Result: learning

sObject = slice(3, 11, 2)
# Slice every other character from the 3rd to 11th character
print(ourString[sObject])
# Result: rigp
```