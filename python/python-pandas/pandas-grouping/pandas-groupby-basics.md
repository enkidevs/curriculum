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

# GroupBy Basics

---
## Content

Analyzing data often means looking at how different categories compare. GroupBy helps you split, analyze, and combine your data:

```python
import pandas as pd

df = pd.DataFrame({
    'language': ['Python', 'Python', 'JavaScript', 'JavaScript'],
    'framework': ['Django', 'Flask', 'React', 'Vue'],
    'stars': [45000, 55000, 180000, 190000]
})

# Average stars by language
by_language = df.groupby('language')
print(by_language.mean())
```
```
           stars
language        
JavaScript  185000
Python       50000
```

Want more stats at once?
```python
# Get multiple metrics per language
stats = by_language['stars'].agg(['mean', 'count', 'sum'])
print(stats)
```
```
           mean  count     sum
language                      
JavaScript  185000      2  370000
Python       50000      2  100000
```

> 💡 Chain operations: `df.groupby('col').mean()` works too!

---
## Practice

Group by 'type' and get the mean:

```python
result = df.???(???).???()
```

- `groupby`
- `'type'`
- `mean`
- `group`
- `average`

---
## Revision

Get count of items per group:

```python
counts = df.groupby('category').???()
```

- `count`
- `size`
- `length`
- `sum` 