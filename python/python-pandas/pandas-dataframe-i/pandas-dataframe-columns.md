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

# Working with Columns

---

## Content

A common way of viewing DataFrames is to see the columns. Here's how to access and modify them:

```python
import pandas as pd

df = pd.DataFrame({
    'language': ['Python', 'JavaScript', 'Rust'],
    'year_created': [1991, 1995, 2010],
    'github_stars': [1.2e6, 2.8e6, 0.9e6]
})

# Get the GitHub stars column
stars = df['github_stars']
print(stars)
```
```
0    1200000.0
1    2800000.0
2     900000.0
Name: github_stars, dtype: float64
```

Add trending data:
```python
df['trending_rank'] = [2, 1, 3]
print(df)
```
```
    language  year_created  github_stars  trending_rank
0    Python         1991     1200000.0             2
1  JavaScript       1995     2800000.0             1
2      Rust         2010      900000.0             3
```

> 💡 Select multiple columns with a list:
```python
popularity = df[['language', 'github_stars']]
```

---

## Practice

Select multiple columns from a DataFrame:

```python
cols = df[???]
```

- `['name', 'age']`
- `'name', 'age'`
- `('name', 'age')`
- `'name,age'`

---

## Revision

To add a new column to a DataFrame:

```python
df??? = ['NY', 'SF']
```

- `['city']`
- `.city`
- `['new']`
- `.add_column('city')` 