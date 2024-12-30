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

# Joining DataFrames

---

## Content

When your DataFrames share an index, joining makes combining them simple:

```python
import pandas as pd

# Repository stats
stats = pd.DataFrame({
    'stars': [10000, 20000, 15000],
    'forks': [2000, 4000, 3000]
}, index=['numpy', 'pandas', 'scipy'])

# Latest releases
releases = pd.DataFrame({
    'version': ['1.24', '2.0', '1.11'],
    'date': ['2023-12', '2024-01', '2023-11']
}, index=['numpy', 'pandas', 'requests'])

# Combine using index
result = stats.join(
    releases,
    how='outer'  # Keep all repositories
)
print(result)
```
```
        stars  forks version    date
numpy   10000   2000    1.24 2023-12
pandas  20000   4000     2.0 2024-01
scipy   15000   3000     NaN     NaN
requests   NaN    NaN    1.11 2023-11
```

Need to join on a column?
```python
# Convert index to column first
stats.reset_index(name='repo').join(
    releases.reset_index(name='repo'),
    on='repo'
)
```

> 💡 `join()` is like `merge()` but uses index by default

---

## Practice

Join DataFrames using their index:

```python
result = df1.???(
    df2,
    ???='outer'
)
```

- `join`
- `how`
- `merge`
- `type`

---

## Revision

Specify suffixes for overlapping columns:

```python
df1.join(
    df2,
    ???='_1',
    ???='_2'
)
```

- `lsuffix`
- `rsuffix`
- `left_suffix`
- `right_suffix` 