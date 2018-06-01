---
author: Ricardo

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

tags:

  - object-oriented

  - copy

links:

  - '[docs.python.org](https://docs.python.org/2/library/copy.html){website}'

---
# Deep copy of objects

---
## Content

Python's `copy` module contains a suite of functions used to duplicate objects, this can help avoid subtle bugs caused by variable aliasing. 

The example below show how to copy an object. The print statement demonstrates that the two variables do not refer to the same list object after the copy has been performed.
  
```python
import copy

listA = ["a","b","c"]
listB = copy.deepcopy(listA)

#Use `is` function to compare objects 
print(listA is listB)
#False
```