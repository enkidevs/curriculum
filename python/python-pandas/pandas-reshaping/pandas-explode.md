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

# Exploding Lists

---
## Content

Got lists inside your DataFrame? Explode them to analyze individual elements:

```python
import pandas as pd

# Repository data with tag lists
df = pd.DataFrame({
    'repo': ['numpy', 'pandas'],
    'tags': [
        ['math', 'array', 'scientific'],
        ['data', 'array', 'tabular']
    ],
    'stars': [20000, 30000]
})

# Create row for each tag
exploded = df.explode('tags')
print(exploded)
```
```
     repo      tags  stars
0   numpy      math  20000
0   numpy     array  20000
0   numpy scientific  20000
1  pandas      data  30000
1  pandas     array  30000
1  pandas   tabular  30000
```

Multiple list columns?
```python
# Contributors and their roles
df = pd.DataFrame({
    'repo': ['numpy'],
    'contributors': [['Alice', 'Bob']],
    'roles': [['maintainer', 'reviewer']]
})

# Explode both columns
result = df.explode(['contributors', 'roles'])
```

> 💡 Original index values are repeated for each list element

---
## Practice

Explode a column containing lists:

```python
result = df.???(???)
```

- `explode`
- `'items'`
- `expand`
- `split`

---
## Revision

Explode multiple columns:

```python
df.explode(???)
```

- `['col1', 'col2']`
- `'col1', 'col2'`
- `cols=['col1', 'col2']`
- `columns=['col1', 'col2']` 