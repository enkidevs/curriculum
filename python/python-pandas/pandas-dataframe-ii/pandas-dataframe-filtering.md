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

# Filtering DataFrames

---
## Content

Need to find all entries matching certain criteria? DataFrame filtering helps you zero in on exactly what you're looking for:

```python
import pandas as pd

df = pd.DataFrame({
    'language': ['Python', 'JavaScript', 'Java', 'C++'],
    'year_created': [1991, 1995, 1995, 1985],
    'github_stars': [1.2e6, 2.8e6, 0.9e6, 0.7e6]
})

# Find modern languages
modern = df[df['year_created'] > 1990]
print(modern)
```
```
    language  year_created  github_stars
0    Python         1991      1200000.0
1  JavaScript       1995      2800000.0
2      Java         1995       900000.0
```

Looking for something more specific?
```python
# Popular languages from 1995
mask = (df['year_created'] == 1995) & (df['github_stars'] > 1e6)
result = df[mask]
print(result)
```
```
    language  year_created  github_stars
1  JavaScript       1995      2800000.0
```

> 💡 Use `&` for AND, `|` for OR in conditions

---
## Practice

Filter rows where age is greater than 30:

```python
result = df[df['???'] ??? 30]
```

- `'age'`
- `>`
- `age`
- `>=`

---
## Revision

To combine filter conditions, use:

```python
mask = (df['age'] > 25) ??? (df['city'] == 'NY')
```

- `&`
- `and`
- `+`
- `&&` 