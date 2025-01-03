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

# Mapping Values

---
## Content

Need to replace values with others? `map()` makes it easy:

```python
import pandas as pd

# Bug status data
bugs = pd.Series([
    'open', 'closed', 'in_progress',
    'open', 'closed', 'in_progress'
])

# Status mapping
status_map = {
    'open': 1,
    'in_progress': 2,
    'closed': 3
}

# Convert to numeric
numeric_status = bugs.map(status_map)
print(numeric_status)
```
```
0    1
1    3
2    2
3    1
4    3
5    2
dtype: int64
```

Map with a function:
```python
# Severity levels
severity = pd.Series(['P1', 'P2', 'P3'])

def get_priority(level):
    return level.replace('P', 'Priority ')

# More readable labels
readable = severity.map(get_priority)
```

> 💡 `map()` works on Series, use `replace()` for DataFrames

---
## Practice

Map values using a dictionary:

```python
result = series.???(
    {'a': 1, 'b': 2}
)
```

- `map`
- `replace`
- `apply`
- `transform`

---
## Revision

Map values using a function:

```python
def upper(x):
    return x.upper()

result = series.???(???)
```

- `map`
- `upper`
- `apply`
- `transform` 