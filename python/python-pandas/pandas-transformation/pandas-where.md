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

# Conditional Updates

---
## Content

Need to update values based on conditions? `where()` and `mask()` make it easy:

```python:python/python-pandas/pandas-transformation/pandas-replace.md
import pandas as pd

# Performance metrics
df = pd.DataFrame({
    'response_time': [120, 250, 180, 400, 150],
    'status': ['ok', 'ok', 'ok', 'error', 'ok']
})

# Flag slow responses (>200ms)
df['performance'] = df['response_time'].where(
    df['response_time'] <= 200,
    'slow'
)
print(df)
```
```
   response_time status performance
0           120     ok        120
1           250     ok       slow
2           180     ok        180
3           400  error       slow
4           150     ok        150
```

Using mask (opposite of where):
```python
# Mark errors as invalid
df['valid'] = df['status'].mask(
    df['status'] == 'error',
    'invalid'
)
```

> 💡 `where()` keeps values where condition is True
> `mask()` keeps values where condition is False

---
## Practice

Keep values where condition is True:

```python
result = series.???(
    series > 10,
    'small'
)
```

- `where`
- `mask`
- `if`
- `when`

---
## Revision

Keep values where condition is False:

```python
result = series.???(
    series > 100,
    'large'
)
```

- `mask`
- `where`
- `if_false`
- `unless`