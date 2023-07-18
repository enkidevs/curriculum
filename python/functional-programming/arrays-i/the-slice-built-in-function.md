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

`slice` creates index ranges that we can use to extract components from lists and strings:

```python
ourString = 'learning-python'

# Slice up to the 8th character
sObject = slice(8)
print(ourString[sObject])
# Result: learning

# Slice every other character from the 3rd to 11th character
sObject = slice(3, 11, 2)
print(ourString[sObject])
# Result: rigp
```