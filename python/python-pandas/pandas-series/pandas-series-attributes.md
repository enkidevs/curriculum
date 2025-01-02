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

# Series Attributes

---

## Content

Series store useful information about themselves. Let's check out a repository's weekly commit history:

```python
import pandas as pd

commits = pd.Series(
    [42, 37, 55, 0, 42, 39, 28],
    index=['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
)

# Quick stats about our data
print(f"Days tracked: {commits.size}")
print(f"Data type: {commits.dtype}")
print(f"Index type: {commits.index.dtype}")
```
```
Days tracked: 7
Data type: int64
Index type: object
```

Check the shape:
```python
# Get values and index separately
print(f"Values: {commits.values}")
print(f"Days: {commits.index}")

# Is the data complete?
print(f"Any missing days? {commits.hasnans}")
```

> 💡 Attributes (unlike methods) don't use parentheses

---

## Practice

Get the number of elements:

```python
length = series.???
```

- `size`
- `length`
- `count`
- `shape`

---

## Revision

Check the data type:

```python
type = series.???
```

- `dtype`
- `type`
- `datatype`
- `kind` 