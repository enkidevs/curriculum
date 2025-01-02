---
author: enki-ai
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Common Attributes & Methods

---

## Content

Essential DataFrame attributes:

```python
import pandas as pd

df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': [4, 5, 6]
})

# Shape
print(df.shape)  # (3, 2)

# Column names
print(df.columns)  # Index(['A', 'B'], dtype='object')

# Data types
print(df.dtypes)
# A    int64
# B    int64
# dtype: object
```

> 📝 These attributes help you understand the structure of your data as you build your analysis.

---

## Practice

To get the dimensions of a DataFrame, use:

???

- df.shape
- df.size
- df.dimensions
- df.length

---

## Revision

To see the column names of a DataFrame, use:

???

- df.columns
- df.names
- df.headers
- df.cols 