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

# Merge Types

---
## Content

Different projects need different ways of combining data. Here's how to handle various scenarios:

```python
import pandas as pd

# Active repositories
active = pd.DataFrame({
    'repo': ['numpy', 'pandas', 'requests'],
    'stars': [20000, 30000, 40000]
})

# Repository maintainers
maintainers = pd.DataFrame({
    'repo': ['numpy', 'requests', 'flask'],
    'maintainer': ['Travis', 'Kenneth', 'David']
})

# Inner merge - only repos in both DataFrames
inner = pd.merge(
    active,
    maintainers,
    how='inner'
)
print(inner)
```
```
      repo  stars maintainer
0    numpy  20000     Travis
1  requests  40000    Kenneth
```

Need all repositories?
```python
# Outer merge - keep all repos
outer = pd.merge(
    active,
    maintainers,
    how='outer'
)
print(outer)
```
```
      repo  stars maintainer
0    numpy  20000     Travis
1   pandas  30000        NaN
2  requests  40000    Kenneth
3    flask     NaN      David
```

> 💡 Use `how='left'` or `how='right'` to keep all rows from one DataFrame

---
## Practice

Keep all rows from the left DataFrame:

```python
pd.merge(
    left,
    right,
    ???='???'
)
```

- `how`
- `left`
- `type`
- `inner`

---
## Revision

To keep all rows from both DataFrames:

```python
result = pd.merge(df1, df2, how='???')
```

- `outer`
- `full`
- `both`
- `all` 