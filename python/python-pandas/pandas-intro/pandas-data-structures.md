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

# Pandas Data Structures

---

## Content

Pandas has two main data structures:

**Series**: 1D labeled array

```python
import pandas as pd

# Create a Series
s = pd.Series([1, 2, 3, 4])
print(s)
```
```
0    1
1    2
2    3
3    4
dtype: int64
```

**DataFrame**: 2D labeled table

```python
# Create a DataFrame
df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': ['a', 'b', 'c']
})
print(df)
```
```
   A  B
0  1  a
1  2  b
2  3  c
```

> 💡 Think of a DataFrame as multiple Series sharing the same index!

---

## Practice

A pandas Series is a ??? array, while a DataFrame is a ??? table.

- 1D
- 2D
- 3D
- 4D

---

## Revision

To store a single column of data, you should use a:

???

- Series
- DataFrame
- Array
- List 