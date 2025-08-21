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

# Multi-Level Indexing

---
## Content

Sometimes data has natural hierarchies. Think of tracking coding progress across different courses and years:

```python
import pandas as pd

# Create DataFrame with multi-index
df = pd.DataFrame({
    'score': [85, 90, 88, 92],
    'completed': [True, True, False, True]
}, index=pd.MultiIndex.from_tuples([
    ('Python', '2023'),
    ('Python', '2024'),
    ('JavaScript', '2023'),
    ('JavaScript', '2024')
], names=['course', 'year']))

print(df)
```
```
                    score  completed
course     year                    
Python     2023      85       True
           2024      90       True
JavaScript 2023      88      False
           2024      92       True
```

Want all Python scores?
```python
print(df.loc['Python'])
```
```
      score  completed
year                  
2023     85       True
2024     90       True
```

Or everything from 2023?
```python
# Cross-section for 2023
print(df.xs('2023', level='year'))
```

> 💡 Multi-indexes help organize hierarchical data logically

---
## Practice

Create a multi-index from tuples:

```python
index = pd.MultiIndex.from_???(
    [('A', 1), ('A', 2), ('B', 1)]
)
```

- `tuples`
- `lists`
- `arrays`
- `pairs`

---
## Revision

Select all data for year 2023:

```python
result = df.???(???, level='year')
```

- `xs`
- `'2023'`
- `loc`
- `get` 