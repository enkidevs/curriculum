---
author: lior-bd
type: normal
category: must-know
links:
  - >-
    [Python
    slice()](https://www.programiz.com/python-programming/methods/built-in/slice){website}
---

# The slice parameters

---

## Content


You can slice in two ways:
```python
slice(stop)
# or
slice(start, stop, step)
```
Where the different parameters are:
- **start** - the index where the slice starts. Defaults to 0
- **stop** - the index where the slice ends. The slice stops on the index `stop - 1`. If only one integer is given to the function Python assumes it to be the `stop` index.
- **step** - the increment between each index of the slice, i.e. a step of 2 increments the index included in the slice by 2, each step. Defaults to 1.
