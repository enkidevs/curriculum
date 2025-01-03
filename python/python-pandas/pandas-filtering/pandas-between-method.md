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

# The between Method

---
## Content

When analyzing data, you often need to find values within a specific range. The `between` method makes this super simple:

```python
import pandas as pd

df = pd.DataFrame({
    'repo': ['numpy', 'pandas', 'scipy', 'matplotlib'],
    'stars': [25000, 35000, 20000, 30000],
    'issues': [1200, 2500, 800, 1800]
})

# Find repos with 1000-2000 open issues
result = df[df['issues'].between(1000, 2000)]
print(result)
```
```
          repo  stars  issues
0        numpy  25000    1200
3  matplotlib  30000    1800
```

Want medium-sized projects?
```python
# Stars between 20k and 30k (inclusive)
medium = df[df['stars'].between(20000, 30000)]
print(medium)
```

> 💡 `between()` includes both endpoints by default

---
## Practice

Get values between 10 and 20:

```python
mask = df['value'].???(???, ???)
```

- `between`
- `10`
- `20`
- `range`
- `in`

---
## Revision

Filter ages from 25 to 30 inclusive:

```python
result = df[df['???'].between(???, ???)]
```

- `age`
- `25`
- `30`
- `ages`
- `'25'`
- `'30'` 