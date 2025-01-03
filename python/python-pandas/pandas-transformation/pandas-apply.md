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

# Applying Functions

---
## Content

Need to transform your data with custom functions? `apply()` is your friend:

```python
import pandas as pd

# Code metrics
df = pd.DataFrame({
    'function': ['login', 'process', 'validate'],
    'lines': [50, 120, 30],
    'complexity': [4, 8, 2]
})

# Calculate maintainability score
def score(row):
    return 100 - (row['lines'] * 0.1 + row['complexity'] * 5)

df['score'] = df.apply(score, axis=1)
print(df)
```
```
   function  lines  complexity  score
0    login     50          4   70.0
1  process    120          8   48.0
2 validate     30          2   83.0
```

Apply to a single column:
```python
# Categorize complexity
def complexity_level(value):
    if value <= 3: return 'Low'
    if value <= 6: return 'Medium'
    return 'High'

df['level'] = df['complexity'].apply(complexity_level)
```

> 💡 Use `axis=1` for row-wise operations, `axis=0` for columns

---
## Practice

Apply a function to each row:

```python
result = df.???(func, ???=1)
```

- `apply`
- `axis`
- `map`
- `transform`

---
## Revision

Apply to a single column:

```python
df['new'] = df['col'].???(func)
```

- `apply`
- `map`
- `transform`
- `use` 