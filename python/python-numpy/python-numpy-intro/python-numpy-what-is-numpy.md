---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [NumPy Documentation](https://numpy.org/doc/stable/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What is NumPy?

---

## Content

NumPy is a Python library that makes working with numbers faster and easier.

Its main feature is the array object - a supercharged list that can:

- Hold lots of numbers
- Do math on all numbers at once
- Create tables and grids of numbers

Here's the difference:

```python
# Regular Python (slow)
numbers = [1, 2, 3]
for i in range(len(numbers)):
    numbers[i] = numbers[i] * 2
# [2, 4, 6]

# NumPy (fast)
import numpy as np
numbers = np.array([1, 2, 3])
numbers = numbers * 2
# array([2, 4, 6])
```

> 💡 NumPy is faster because it can work on all numbers at once!

---

## Practice

NumPy arrays are better than Python lists because they:

???

- can do math on all numbers at once
- are written in Python
- store numbers differently
- use more memory

---

## Revision

Which is the correct way to import NumPy?

???

- `import numpy as np`
- `import numpy`
- `from numpy import *`
- `include numpy`
