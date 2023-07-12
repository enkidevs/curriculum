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

Functional programming is a style of programming where we use functions as self-contained multi-purpose formulas.

We'll delve into Python's functions like `slice`, `reverse`, and `zip` to show how clean and powerful Functional Programming can be!

### Slice

The `slice` built-in function creates index ranges that we can use to extract components from lists and strings.

Consider the following example, where we use `slice` to extract a substring from a string.

```python
ourString = 'learning-python'

sObject = slice(8)
# Equivalent to slice(None, 8, None)
print(ourString[sObject])
# Result: learning

sObject = slice(3, 11, 2)
print(ourString[sObject])
# Result: rigp
```


