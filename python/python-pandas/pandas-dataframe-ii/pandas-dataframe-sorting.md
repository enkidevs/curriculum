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

# Sorting DataFrames

---

## Content

Sorting data helps you spot patterns and rankings easily:

```python
import pandas as pd

df = pd.DataFrame({
    'language': ['Python', 'JavaScript', 'Rust'],
    'github_stars': [1.2e6, 2.8e6, 0.9e6],
    'job_posts': [50000, 85000, 12000]
})

# Sort by GitHub popularity
by_stars = df.sort_values('github_stars', ascending=False)
print(by_stars)
```
```
    language  github_stars  job_posts
1  JavaScript     2800000      85000
0     Python     1200000      50000
2       Rust      900000      12000
```

Want to consider multiple factors?
```python
# Sort by job posts, then by stars
sorted_df = df.sort_values(
    ['job_posts', 'github_stars'],
    ascending=[False, False]
)
```

> 💡 Default sort is ascending; use `ascending=False` to reverse

---

## Practice

Sort DataFrame by 'price' in descending order:

```python
result = df.sort_values('price', ???=???)
```

- `ascending`
- `False`
- `descending`
- `True`
- `asc`
- `desc`
- `reverse`

---

## Revision

To sort by multiple columns:

```python
df.sort_values(???, ascending=[True, False])
```

- `['name', 'age']`
- `'name', 'age'`
- `('name', 'age')`
- `'name,age'` 