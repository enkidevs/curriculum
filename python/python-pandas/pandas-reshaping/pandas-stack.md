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

# Stacking Data

---
## Content

Working with multi-level columns? Stacking helps you reshape hierarchical data:

```python
import pandas as pd

# Code review metrics
df = pd.DataFrame({
    ('frontend', 'reviews'): [10, 12],
    ('frontend', 'comments'): [50, 60],
    ('backend', 'reviews'): [8, 9],
    ('backend', 'comments'): [40, 45]
}, index=['week1', 'week2'])

print(df)
```
```
      frontend        backend      
      reviews comments reviews comments
week1      10      50       8      40
week2      12      60       9      45
```

Stack the columns:
```python
# Convert to multi-index rows
stacked = df.stack()
print(stacked)
```
```
            reviews  comments
week1 frontend     10       50
      backend       8       40
week2 frontend     12       60
      backend       9       45
```

Need the original format?
```python
# Unstack back to columns
unstacked = stacked.unstack()
```

> 💡 `stack()` moves the innermost column level to become the innermost row index

---
## Practice

Stack multi-level columns:

```python
result = df.???(level=???)
```

- `stack`
- `0`
- `unstack`
- `1`

---
## Revision

Unstack the innermost index level:

```python
result = df.???(level=???)
```

- `unstack`
- `-1`
- `stack`
- `0` 