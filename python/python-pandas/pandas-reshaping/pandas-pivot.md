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

# Pivoting Data

---

## Content

Sometimes you need to reorganize your data to spot patterns. 

Pivoting helps transform your data view by rotating rows into columns and vice versa.

```python
import pandas as pd

# Daily coding activity
data = pd.DataFrame({
    'day': ['Mon', 'Mon', 'Tue', 'Tue'],
    'language': ['Python', 'JavaScript', 'Python', 'JavaScript'],
    'lines': [100, 150, 200, 100],
    'bugs_fixed': [3, 2, 4, 1]
})

# Reshape by language
pivoted = data.pivot(
    index='day',
    columns='language',
    values='lines'
)
print(pivoted)
```
```
language  JavaScript  Python
day                         
Mon             150     100
Tue             100     200
```

Want multiple metrics?
```python
# Show both lines and bugs
multi = data.pivot(
    index='day',
    columns='language',
    values=['lines', 'bugs_fixed']
)
print(multi)
```
```
        lines          bugs_fixed
language  JavaScript Python JavaScript Python
day                                         
Mon             150    100           2      3
Tue             100    200           1      4
```

> 💡 Pivot tables are great for summarizing data patterns

---

## Practice

Create a pivot table:

```python
result = df.???(
    ???='date',
    ???='category',
    ???='value'
)
```

- `pivot`
- `index`
- `columns`
- `values`

---

## Revision

Pivot with multiple value columns:

```python
df.pivot(
    index='id',
    columns='type',
    ???=['price', 'qty']
)
```

- `values`
- `metrics`
- `data`
- `cols` 