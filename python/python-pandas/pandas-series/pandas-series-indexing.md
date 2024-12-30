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

# Series Indexing

---

## Content

Access Series elements using index labels or positions:

```python
import pandas as pd

s = pd.Series([10, 20, 30], 
              index=['a', 'b', 'c'])

# Using index label
print(s['a'])  # 10

# Using position
print(s[0])    # 10

# Multiple elements
print(s[['a', 'c']])
```
```
a    10
c    30
dtype: int64
```

> 💡 You can use both integer positions and labels to access elements!

---

## Practice

Get the first element from the Series:

```python
s = pd.Series([1, 2, 3])
value = ???
```

- `s[0]`
- `s(0)`
- `s[1]`
- `s.0`

---

## Revision

To select multiple elements using labels:

```python
s = pd.Series([1, 2, 3],
              index=['a', 'b', 'c'])
values = s[???]
```

- `['a', 'c']`
- `'a', 'c'`
- `[0, 2]`
- `(a, c)` 