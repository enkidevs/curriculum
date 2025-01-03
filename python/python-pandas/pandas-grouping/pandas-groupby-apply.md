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

# GroupBy Apply

---
## Content

Sometimes you need complex operations that go beyond simple aggregations. The apply method lets you use custom functions on your groups:

```python
import pandas as pd

df = pd.DataFrame({
    'repo': ['numpy', 'numpy', 'pandas', 'pandas'],
    'contributor': ['Alice', 'Bob', 'Charlie', 'David'],
    'commits': [20, 15, 30, 25]
})

# Find top contributor per repo
def top_coder(group):
    return group.nlargest(1, 'commits')

stars = df.groupby('repo').apply(top_coder)
print(stars)
```
```
              repo contributor  commits
repo                                  
numpy 0      numpy      Alice       20
pandas 2    pandas    Charlie       30
```

Want contribution percentages?
```python
def pct_of_total(group):
    total = group['commits'].sum()
    group['pct'] = group['commits'] / total * 100
    return group

df = df.groupby('repo').apply(pct_of_total)
```

> 💡 `apply` is super flexible but slower than `agg` or `transform`

---
## Practice

Apply a custom function to groups:

```python
def my_func(x):
    return x.max() - x.min()

result = df.groupby('category').???(???)
```

- `apply`
- `my_func`
- `agg`
- `transform`

---
## Revision

Get the top 2 values per group:

```python
def top_two(group):
    return group.???(2, '???')

result = df.groupby('type').apply(top_two)
```

- `nlargest`
- `value`
- `largest`
- `max` 